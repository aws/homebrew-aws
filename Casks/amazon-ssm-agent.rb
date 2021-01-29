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
  version "3.0.529-0"
  sha256 "f09fa67e270f87e800de597d4317e6da0b81ce68e4f42b2ea16d7a565a31af8e"

  # amazon was verified as official when first introduced to the cask
  url "https://aws-homebrew.s3-us-west-2.amazonaws.com/amazon-ssm-agent-3.0.529-0.pkg"
  name "Amazon SSM Agent"
  homepage "https://github.com/aws/amazon-ssm-agent"

  pkg "amazon-ssm-agent-3.0.529-0.pkg"

  uninstall pkgutil: "com.amazon.aws.ssm"
end
