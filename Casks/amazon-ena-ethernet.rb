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
  version "1.5.0"

  if MacOS.version <= :mojave
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/amazon-ena-ethernet-1.5.0-1.mojave.pkg",
        verified: "amazon"
    sha256 "721ffeff3c82beaafbff237a5ec143e568000a35ebcb073d1c3381ec523881a3"
    pkg "amazon-ena-ethernet-1.5.0-1.mojave.pkg"
  elsif MacOS.version <= :catalina
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/amazon-ena-ethernet-1.5.0-1.catalina.pkg",
        verified: "amazon"
    sha256 "758d5c8cb1e8db6aa92931268ce8a57fe0ec23f965bc00708c487f4d0372c275"
    pkg "amazon-ena-ethernet-1.5.0-1.catalina.pkg"
  elsif MacOS.version <= :big_sur
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/amazon-ena-ethernet-1.5.0-1.bigsur.pkg",
        verified: "amazon"
    sha256 "d96a1d02a1194f4baf42622563b018247e554d2ecacafc4184e0041a0f715e87"
    pkg "amazon-ena-ethernet-1.5.0-1.bigsur.pkg"
  end

  name "Amazon ENA Ethernet"
  homepage "https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena.html"

  uninstall pkgutil: "com.amazon.ec2.ena-ethernet"
end
