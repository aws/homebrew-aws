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
  homepage "https://docs.aws.amazon.com/AWSEC2/latest/macOSGuide/concepts.html"
  url "https://aws-homebrew.s3-us-west-2.amazonaws.com/ec2-macos-system-monitor-1.1.0.tar.gz"
  sha256 "65d7ef52f4f7ef7c853455db09c1b65349a84291002abfe722d046652210a5cd"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    # Turn off module style for go 1.16 until we get module support enabled
    system "go", "env", "-w", "GO111MODULE=off"
    # Install dependencies
    system "go", "get", "go.bug.st/serial"
    system "go", "get", "github.com/shirou/gopsutil"
    system "go", "get", "golang.org/x/sys/unix"
    system "go", "get", "github.com/tklauser/go-sysconf"
    # Go build
    system "go", "build", "-trimpath", "-ldflags", "-s -w", "cmd/relayd/relayd.go"
    system "go", "build", "-trimpath", "-ldflags", "-s -w", "cmd/cpuutilization/cpuutilization.go"
    (libexec/"bin").mkpath
    libexec.install "cpuutilization" => "bin/send-cpu-utilization"
    libexec.install "relayd" => "bin/ec2monitoring-relayd"
    inreplace "bin/setup-ec2monitoring", "/usr/local/Cellar", libexec.to_s
    bin.install "bin/setup-ec2monitoring"
    inreplace "configuration/com.amazon.ec2.monitoring.agents.cpuutilization.plist",
              "/usr/local/libexec",
              "#{libexec}/bin"
    inreplace "configuration/com.amazon.ec2.monitoring.relayd.plist", "/usr/local/libexec", "#{libexec}/bin"
    libexec.install "configuration/com.amazon.ec2.monitoring.agents.cpuutilization.plist"
    libexec.install "configuration/com.amazon.ec2.monitoring.relayd.plist"
  end

  def caveats
    <<~EOS
      #{name} must be enabled/disabled with the tool setup-ec2monitoring.

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
