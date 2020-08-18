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

cask "amazon-ssm-agent" do
  version "2.3.1644"
  sha256 "d06d524038f5e292a8431dd5164a2d79190463cfa9533d11bdc7f53b730ae6f2"

  # amazon was verified as official when first introduced to the cask
  url "https://aws-homebrew.s3-us-west-2.amazonaws.com/amazon-ssm-agent-2.3.1644-0.pkg"
  name "Amazon SSM Agent"
  homepage "https://github.com/aws/amazon-ssm-agent"

  pkg "amazon-ssm-agent-2.3.1644-0.pkg"

  uninstall pkgutil: "com.amazon.aws.ssm"
end
