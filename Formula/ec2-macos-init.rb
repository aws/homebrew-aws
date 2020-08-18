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

class Ec2MacosInit < Formula
  desc "EC2 macOS Init"
  homepage "https://docs.aws.amazon.com/AWSEC2/latest/macOSGuide/concepts.html"
  url "https://aws-homebrew.s3-us-west-2.amazonaws.com/ec2-macos-init-1.1.0.tar.gz"
  sha256 "9a06bf38e7ad3328dc472345c9ee95f98c6628dc4fb197d3169d9da12ae3e52f"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["CGO_ENABLED"] = "0"

    # Install dependencies
    system "go", "get", "github.com/BurntSushi/toml"
    system "go", "get", "github.com/google/go-cmp/cmp"
    system "go", "get", "github.com/digineo/go-ping"

    commit_date = File.read("configuration/commitdate.txt").strip
    build_version = File.read("configuration/version.txt").strip

    # Go build
    cd "src/golang.a2z.com/EC2-macOS-init" do
      system "go",
             "build",
             "-trimpath",
             "-ldflags",
             "-s -w -X 'main.CommitDate=#{commit_date}' -X 'main.Version=#{build_version}'"
      bin.install "EC2-macOS-init" => "ec2-macos-init"
    end
    libexec.install "configuration/init.toml" => "init.toml"
    libexec.install "Library/LaunchDaemons/com.amazon.ec2.macos-init.plist"
  end

  def caveats
    <<~EOS
      #{name} must be configured to start on boot. 

        To enable #{name} for running at boot:

          sudo cp #{libexec}/com.amazon.ec2.macos-init.plist /Library/LaunchDaemons/com.amazon.ec2.macos-init.plist
          sudo launchctl load /Library/LaunchDaemons/com.amazon.ec2.macos-init.plist

        To disable running #{name} on boot (not recommended):

          sudo launchctl unload /Library/LaunchDaemons/com.amazon.ec2.macos-init.plist
          sudo rm -f /Library/LaunchDaemons/com.amazon.ec2.macos-init.plist

        Note that the init.toml may need to be updated, to take the package's default, run:

          sudo cp #{libexec}/init.toml /usr/local/aws/ec2-macos-init/init.toml

    EOS
  end

  test do
    system "false"
  end
end
