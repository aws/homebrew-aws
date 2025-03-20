#   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License").
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

cask "ec2-macos-system-monitor" do
    name "EC2 System Monitor for macOS"
    desc "Agent that runs on EC2 Mac instances to provide on-instance metrics in CloudWatch"
    homepage "https://github.com/aws/ec2-macos-system-monitor"

    build_version = "1.3.0-1"
    version build_version.split("-").first

    pkg_file = "ec2-macos-system-monitor-#{build_version}_universal.pkg"
    url "https://aws-homebrew.s3.us-west-2.amazonaws.com/cask/ec2-macos-system-monitor/#{pkg_file}",
        verified: "aws-homebrew.s3.us-west-2.amazonaws.com/cask/ec2-macos-system-monitor/"
    sha256 "6ac6170197065b1eac00ca5694a31375eb3b0da8557c8ee417b5846b50181b50"

    pkg pkg_file

    uninstall_postflight do
        script = Tempfile.new('load_com.amazon.ec2.monitoring.agents.cpuutilization_')
        script.write <<~'EOS'
            #!/bin/bash

            num_trials=10

            check_agent() {
                launchctl list com.amazon.ec2.monitoring.agents.cpuutilization >/dev/null 2>&1
            }

            check_agent || exit 0

            echo "Deleting the service system/com.amazon.ec2.monitoring.agents.cpuutilization"
            if ! launchctl remove com.amazon.ec2.monitoring.agents.cpuutilization; then
                echo "Failed to remove system/com.amazon.ec2.monitoring.agents.cpuutilization"
                exit 1
            fi

            n=0
            while check_agent; do
              if [ "$n" -ge "$num_trials" ]; then
                  echo "Waited for $num_trials seconds, but the agent is still running"
                  exit 1
              fi
              sleep 1
              n="$((n+1))"
            done
            echo "system/com.amazon.ec2.monitoring.agents.cpuutilization has been deleted"
        EOS
        script.close

        system_command "/bin/bash", args: [script.path], sudo: true
    end

    uninstall pkgutil: "com.amazon.ec2.system-monitor"

    livecheck do
      url "https://github.com/aws/ec2-macos-system-monitor.git"

      strategy :git do |tags|
        tags.filter_map { |tag| tag[/^(\d+(?:\.\d+)+)$/, 1] }
      end
    end

    caveats do
        <<~EOS
            #{token} can be enabled/disabled with the tool setup-ec2monitoring.
                To enable #{token}:
                    sudo setup-ec2monitoring enable
                To disable #{token}:
                    sudo setup-ec2monitoring disable
        EOS
    end
end
