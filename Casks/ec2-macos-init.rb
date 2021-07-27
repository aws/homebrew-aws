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
    version "1.5.0"
    sha256 "15ea1f18da0896b5003c5a243338d6c0958960f9b82e2fb381a0be1d8672a792"

    url "https://aws-homebrew.s3.us-west-2.amazonaws.com/cask/ec2-macos-init/ec2-macos-init-#{version}.pkg",
        verified: "amazon"
    name "EC2 macOS Init"
    desc "Launch daemon used to initialize Mac instances within EC2"
    homepage "https://github.com/aws/ec2-macos-init"

    pkg "ec2-macos-init-#{version}.pkg"

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
