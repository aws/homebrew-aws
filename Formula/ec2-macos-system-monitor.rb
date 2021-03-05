#   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.

# Licensed under the Apache License, Version 2.0 (the "License").
# You may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Ec2MacosSystemMonitor < Formula
  desc "EC2 System Monitor for macOS"
  homepage "https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-mac-instances.html"
  url "https://aws-homebrew.s3-us-west-2.amazonaws.com/formula/ec2-macos-system-monitor/ec2-macos-system-monitor-1.2.0.tar.gz"
  sha256 "277204db4a4dac507e5b73779723aa1df960f67083cd325f840b60616884ef92"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    # Go build
    system "go", "build", "-o", "cpuutilization", "-ldflags", "-s -w", "main.go"
    (libexec/"bin").mkpath
    libexec.install "cpuutilization" => "bin/send-cpu-utilization"
    inreplace "scripts/setup-ec2monitoring", "/usr/local/Cellar", libexec.to_s
    bin.install "scripts/setup-ec2monitoring"
    inreplace "init/com.amazon.ec2.monitoring.agents.cpuutilization.plist",
              "/usr/local/libexec",
              "#{opt_prefix}/libexec/bin"
    libexec.install "init/com.amazon.ec2.monitoring.agents.cpuutilization.plist"
  end

  def caveats
    <<~EOS
      #{name} must be enabled/disabled with the tool setup-ec2monitoring. If this was an update, another "enable" may be required.

        To enable/install #{name}:

          sudo setup-ec2monitoring enable

        To disable #{name}:

          sudo setup-ec2monitoring disable

    EOS
  end
  test do
    system "false"
  end
end
