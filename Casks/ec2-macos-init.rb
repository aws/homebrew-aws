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

cask "ec2-macos-init" do
    version "1.5.10-2"
    sha256 "975a6f9228cc3b5b949598da65e1ad0b2d1fc4371ebf28cf68d3a3462c789a0c"

    pkg_file = "ec2-macos-init-#{version}_universal.pkg"

    url "https://aws-homebrew.s3.us-west-2.amazonaws.com/cask/ec2-macos-init/#{pkg_file}",
        verified: "amazon"
    name "EC2 macOS Init"
    desc "Launch daemon used to initialize Mac instances within EC2"
    homepage "https://github.com/aws/ec2-macos-init"

    pkg pkg_file

    uninstall pkgutil: "com.amazon.ec2.macos-init"

    caveats do
        <<~EOS
            #{token} must be configured to start on boot.
                To enable #{token} for running at boot:
                    sudo launchctl load /Library/LaunchDaemons/com.amazon.ec2.macos-init.plist
                To disable running #{token} on boot (not recommended):
                    sudo launchctl remove com.amazon.ec2.macos-init
        EOS
    end
end
