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

cask "amazon-ssm-agent" do
  name "Amazon SSM Agent"
  homepage "https://github.com/aws/amazon-ssm-agent"

  build_version = "3.3.1957.0-1"
  version build_version.split("-").first

  pkg_file = "amazon-ssm-agent-#{build_version}_#{arch}.pkg"
  url "https://aws-homebrew.s3-us-west-2.amazonaws.com/cask/amazon-ssm-agent/#{pkg_file}",
      verified: "aws-homebrew.s3-us-west-2.amazonaws.com/cask/amazon-ssm-agent/"
  if Hardware::CPU.intel?
        arch = "x86_64"
        sha256 "1a73cedc2823ee406d1235ec0f06abee39ded85fc0bbf25ed482fa77d42c3eb3"
  else
        arch = "arm64"
        sha256 "f7008138067da831d6ca3c05d464c060c7c6000ddc505770e1ecf43e34c8a254"
  end

  script = Tempfile.new('ensure_no_com.amazon.aws.ssm_')
  script.write <<~'EOS'
    #! /bin/bash

    num_trials=10

    check_agent() {
      launchctl list com.amazon.aws.ssm >/dev/null 2>&1
    }

    check_agent || exit 0

    echo "Deleting the service system/com.amazon.aws.ssm"
    if ! launchctl remove com.amazon.aws.ssm; then
        echo "Failed to remove system/com.amazon.aws.ssm"
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
    echo "system/com.amazon.aws.ssm has been deleted"
  EOS
  script.close

  # This is for upgrading from old versions which don't have uninstall_preflight
  preflight do
    system_command "/bin/bash", args: [script.path], sudo: true
  end

  uninstall_preflight do
    system_command "/bin/bash", args: [script.path], sudo: true
  end

  pkg pkg_file

  livecheck do
    url "https://github.com/aws/amazon-ssm-agent.git"

    strategy :git do |tags|
      tags.filter_map { |tag| tag[/^(\d+(?:\.\d+)+)$/, 1] }
    end
  end

  uninstall pkgutil: "com.amazon.aws.ssm"
end
