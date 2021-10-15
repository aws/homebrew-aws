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

cask "amazon-ena-ethernet" do
  version "1.5.2-2"

  if MacOS.version <= :mojave
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/cask/amazon-ena-ethernet/amazon-ena-ethernet-#{version}.mojave.pkg",
        verified: "amazon"
    sha256 "17220a622a37c49dd874c8cd0ff44a5223dbdc6fd9dbb22861b84d90abb79f3b"
    pkg "amazon-ena-ethernet-#{version}.mojave.pkg"
  elsif MacOS.version <= :catalina
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/cask/amazon-ena-ethernet/amazon-ena-ethernet-#{version}.catalina.pkg",
        verified: "amazon"
    sha256 "183dfd41b56883d84d3fa79a724fb6613d598c6d74c8d8a292eb885b0ffa5167"
    pkg "amazon-ena-ethernet-#{version}.catalina.pkg"
  elsif MacOS.version <= :big_sur
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/cask/amazon-ena-ethernet/amazon-ena-ethernet-#{version}.bigsur.pkg",
        verified: "amazon"
    sha256 "bbd9ab0382b306641598d101e7beec571c182d47ebd32efbae1f0e652aa0efa4"
    pkg "amazon-ena-ethernet-#{version}.bigsur.pkg"
  elsif MacOS.version <= :monterey
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/cask/amazon-ena-ethernet/amazon-ena-ethernet-#{version}.monterey.pkg",
        verified: "amazon"
    sha256 "3cde67c25f339194753256ed911572bfa6a654b46b4af75d548dbcffc0b83634"
    pkg "amazon-ena-ethernet-#{version}.monterey.pkg"
  end

  name "Amazon ENA Ethernet"
  homepage "https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena.html"

  uninstall pkgutil: "com.amazon.ec2.ena-ethernet"
end
