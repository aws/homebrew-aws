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
  version "3.1.715.0"
  if Hardware::CPU.intel?
	arch = "x86_64"
	sha256 "e0c19e159c9c625dee70137f80fde7e5386d372a266fbd4bde6799d8652b1a07"
  else
	arch = "arm64"
	sha256 "b8ea207fb23b4e8f42ac4126741113a06a48dea98f72a0ae6e67d8f58c6b885d"
  end
  pkg_file = "amazon-ssm-agent-#{version}_#{arch}.pkg"

  # amazon was verified as official when first introduced to the cask
  url "https://aws-homebrew.s3-us-west-2.amazonaws.com/cask/amazon-ssm-agent/#{pkg_file}"
  name "Amazon SSM Agent"
  homepage "https://github.com/aws/amazon-ssm-agent"

  script = Tempfile.new('ensure_no_com.amazon.aws.ssm_')
  script.write <<~'EOS'
    #! /bin/bash

    num_trials=10

    check_agent() {
      launchctl list com.amazon.aws.ssm >/dev/null 2>&1
    }

    check_agent || exit 0

    echo "Deleting the service system/com.amazon.aws.ssm"
    if ! launchctl remove com.amazon.aws.ssm; then
        echo "Failed to remove system/com.amazon.aws.ssm"
        exit 1
    fi

    n=0
    while check_agent; do
      if [ "$n" -ge "$num_trials" ]; then
        echo "Waited for $num_trials seconds, but the agent is still running"
        exit 1
      fi
      sleep 1
      n="$((n+1))"
    done
    echo "system/com.amazon.aws.ssm has been deleted"
  EOS
  script.close

  # This is for upgrading from old versions which don't have uninstall_preflight
  preflight do
    system_command "/bin/bash", args: [script.path], sudo: true
  end

  uninstall_preflight do
    system_command "/bin/bash", args: [script.path], sudo: true
  end

  pkg pkg_file

  uninstall pkgutil: "com.amazon.aws.ssm"
end
