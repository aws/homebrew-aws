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

cask "ec2-instance-connect" do
    name "EC2 Instance Connect"
    desc "Allows EC2 mac instances to access EC2 Instance Connect"
    homepage "https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-connect-methods.html"

    build_version = "2.0.0-2"
    version build_version.split("-").first
    
    pkg_file = "ec2-instance-connect-#{build_version}_universal.pkg"

    url "https://aws-homebrew.s3.us-west-2.amazonaws.com/cask/ec2-instance-connect/#{pkg_file}",
        verified: "aws-homebrew.s3.us-west-2.amazonaws.com/cask/ec2-instance-connect/"
    sha256 "18b29b7ce662452ad0126c0ec88034165c5959f55b835caf3a3eea5abf3d8d28"

    script = Tempfile.new('ensure_no_com.amazon.ec2-instance-connect_')
    script.write <<~'EOS'
        #!/bin/sh
        set -e

        # Remove EC2 Instance Connect sshd config if present
        if [ -f /etc/ssh/sshd_config.d/60-ec2-instance-connect.conf ] ; then
            /bin/rm -f /etc/ssh/sshd_config.d/60-ec2-instance-connect.conf
            launchctl unload -w /System/Library/LaunchDaemons/ssh.plist
            launchctl load -w /System/Library/LaunchDaemons/ssh.plist
        fi

        # Delete system user if present
        if id ec2-instance-connect ; then
            dscl . -delete /Users/ec2-instance-connect
        fi
        
        echo "system/com.amazon.ec2-instance-connect has been deleted"
    EOS
    script.close
    
    uninstall_preflight do
        system_command "/bin/bash", args: [script.path], sudo: true
    end

    pkg pkg_file

    uninstall pkgutil: "com.amazon.ec2-instance-connect.pkg"

    livecheck { skip }
end
