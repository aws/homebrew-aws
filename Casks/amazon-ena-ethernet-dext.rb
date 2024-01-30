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

cask "amazon-ena-ethernet-dext" do
    version "1.0.6-p1"
    dextDriverKitVersion = "21.2"
  
    if Hardware::CPU.arm?
        if MacOS.version >= :monterey
            url "https://aws-homebrew.s3.us-west-2.amazonaws.com/cask/amazon-ena-ethernet-dext/amazon-ena-ethernet-dext-app-#{version}-dk#{dextDriverKitVersion}-1.pkg",
                verified: "amazon"
            sha256 "3e42d3f611675f5dd590401dc2006508b2738e32458e40e23c38065dc92aa227"
            pkg "amazon-ena-ethernet-dext-app-#{version}-dk#{dextDriverKitVersion}-1.pkg"
        else
            raise "The amazon-ena-ethernet-dext Cask does not support macOS #{MacOS.version}."
        end
    else
        raise "The amazon-ena-ethernet-dext Cask only supports the arm architecture."
    end
  
    name "Amazon ENA Ethernet Dext"
    homepage "https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena.html"
  
    uninstall pkgutil: "com.amazon.ec2.ena-ethernet.dext"
end
