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
  version "1.4.2"
  sha256 "30c6a2d0082aca87d3f5b404a010ba8d37eea1f12a41d49f12e134b753fd591c"

  # amazon was verified as official when first introduced to the cask
  url "https://aws-homebrew.s3-us-west-2.amazonaws.com/amazon-ena-ethernet-1.4.2-1.pkg"
  name "Amazon ENA Ethernet"
  homepage "https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena.html"

  pkg "amazon-ena-ethernet-1.4.2-1.pkg"

  uninstall pkgutil: "com.amazon.ec2.ena-ethernet"
end
