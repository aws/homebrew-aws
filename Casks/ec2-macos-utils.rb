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

cask "ec2-macos-utils" do
    version "1.0.5"
    sha256 "877578edcf2dd1fb372665c76eeede8dfcbcac9812eea39e4c8b31072fa32dbc"

    build_version = "1"
    pkg_file = "ec2-macos-utils-#{version}-#{build_version}_universal.pkg"

    url "https://aws-homebrew.s3.us-west-2.amazonaws.com/cask/ec2-macos-utils/#{pkg_file}",
        verified: "aws-homebrew.s3.us-west-2.amazonaws.com/cask/#{token}/"
    name "EC2 macOS Utils"
    desc "Utilities for EC2 Mac instances"
    homepage "https://github.com/aws/ec2-macos-utils"

    pkg pkg_file

    uninstall pkgutil: "com.amazon.ec2.macos-utils"

    livecheck { skip }
end
