#   Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
#   Licensed under the Apache License, Version 2.0 (the "License").
#   You may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

class AmazonEfsUtils < Formula
  include Language::Python::Virtualenv

  version "2.4.1"
  sha256 "03c0b8a217cfd8d0239d72935a3a5848bab2d5aa575b5e83d18bac92d555979b"
  
  url "https://aws-homebrew.s3.us-west-2.amazonaws.com/formula/amazon-efs-utils/v#{version}.tar.gz"
  desc "Utilities for Amazon Elastic File System (EFS)"
  homepage "https://aws.amazon.com/efs/"
  license "MIT"

  depends_on "python@3"
  depends_on "stunnel"

  resource "atomicwrites" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/atomicwrites-1.4.1.tar.gz"
    sha256 "81b2c9071a49367a7f770170e5eec8cb66567cfbbc8c73d20ce5ca4a8d71cf11"
  end

  resource "attrs" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/attrs-25.4.0.tar.gz"
    sha256 "16d5969b87f0859ef33a48b35d55ac1be6e42ae49d5e853b597db70c35c57e11"
  end

  resource "botocore" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/botocore-1.42.13.tar.gz"
    sha256 "7e4cf14bd5719b60600fb45d2bb3ae140feb3c182a863b93093aafce7f93cfee"
  end

  resource "configparser" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/configparser-7.2.0.tar.gz"
    sha256 "b629cc8ae916e3afbd36d1b3d093f34193d851e11998920fdcfc4552218b7b70"
  end

  resource "coverage" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/coverage-7.13.0.tar.gz"
    sha256 "a394aa27f2d7ff9bc04cf703817773a59ad6dfbd577032e690f961d2460ee936"
  end

  resource "entrypoints" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/entrypoints-0.4.tar.gz"
    sha256 "b706eddaa9218a19ebcd67b56818f05bb27589b1ca9e8d797b74affad4ccacd4"
  end

  resource "flake8" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/flake8-7.3.0.tar.gz"
    sha256 "fe044858146b9fc69b551a4b490d69cf960fcb78ad1edcb84e7fbb1b4a8e3872"
  end

  resource "funcsigs" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/funcsigs-1.0.2.tar.gz"
    sha256 "a7bb0f2cf3a3fd1ab2732cb49eba4252c2af4240442415b4abce3b87022a8f50"
  end

  resource "jmespath" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "mccabe" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/mccabe-0.7.0.tar.gz"
    sha256 "348e0240c33b60bbdf4e523192ef919f28cb2c3d7d5c7794f74009290f236325"
  end

  resource "mock" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/mock-5.2.0.tar.gz"
    sha256 "4e460e818629b4b173f32d08bf30d3af8123afbb8e04bb5707a1fd4799e503f0"
  end

  resource "more-itertools" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/more_itertools-10.8.0.tar.gz"
    sha256 "f638ddf8a1a0d134181275fb5d58b086ead7c6a72429ad725c67503f13ba30bd"
  end

  resource "packaging" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/packaging-25.0.tar.gz"
    sha256 "d443872c98d677bf60f6a1f2f8c1cb748e8fe762d2bf9d3148b5599295b0fc4f"
  end

  resource "pbr" do
    url "https://aws-homebrew.s3.us-west-2.amazonaws.com/resource/5ab7d62d/pbr-7.0.3.tar.gz"
    sha256 "b46004ec30a5324672683ec848aed9e8fc500b0d261d40a3229c2d2bbfcedc29"
  end

  resource "pluggy" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/pluggy-1.6.0.tar.gz"
    sha256 "7dcc130b76258d33b90f61b658791dede3486c3e6bfb003ee5c9bfb396dd22f3"
  end

  resource "py" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/py-1.11.0.tar.gz"
    sha256 "51c75c4126074b472f746a24399ad32f6053d1b34b68d2fa41e558e6f4a98719"
  end

  resource "pycodestyle" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/pycodestyle-2.14.0.tar.gz"
    sha256 "c4b5b517d278089ff9d0abdec919cd97262a3367449ea1c8b49b91529167b783"
  end

  resource "pyflakes" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/pyflakes-3.4.0.tar.gz"
    sha256 "b24f96fafb7d2ab0ec5075b7350b3d2d2218eab42003821c06344973d3ea2f58"
  end

  resource "pyparsing" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/pyparsing-3.2.5.tar.gz"
    sha256 "2df8d5b7b2802ef88e8d016a2eb9c7aeaa923529cd251ed0fe4608275d4105b6"
  end

  resource "pytest" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/pytest-9.0.2.tar.gz"
    sha256 "75186651a92bd89611d1d9fc20f0b4345fd827c41ccd5c299a868a05d70edf11"
  end

  resource "pytest-cov" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/pytest_cov-7.0.0.tar.gz"
    sha256 "33c97eda2e049a0c5298e91f519302a1334c26ac65c1a483d6206fd458361af1"
  end

  resource "pytest-html" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/pytest_html-4.1.1.tar.gz"
    sha256 "70a01e8ae5800f4a074b56a4cb1025c8f4f9b038bba5fe31e3c98eb996686f07"
  end

  resource "pytest-metadata" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/pytest_metadata-3.1.1.tar.gz"
    sha256 "d2a29b0355fbc03f168aa96d41ff88b1a3b44a3b02acbe491801c98a048017c8"
  end

  resource "pytest-mock" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/pytest_mock-3.15.1.tar.gz"
    sha256 "1849a238f6f396da19762269de72cb1814ab44416fa73a8686deac10b0d87a0f"
  end

  resource "python-dateutil" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "six" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "urllib3" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/urllib3-2.6.2.tar.gz"
    sha256 "016f9c98bb7e98085cb2b4b17b87d2c702975664e4f060c6532e64d1c1a5e797"
  end

  resource "wcwidth" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/5ab7d62d/wcwidth-0.2.14.tar.gz"
    sha256 "4d478375d31bc5395a3c55c40ccdf3354688364cd61c4f6adacaa9215d0b3605"
  end

  def install
    venv = virtualenv_create(libexec, "python3")
    %w[atomicwrites attrs botocore configparser coverage entrypoints flake8 funcsigs jmespath mccabe
       mock more-itertools packaging pbr pluggy py pycodestyle pyflakes pyparsing pytest pytest-cov pytest-html
       pytest-metadata pytest-mock python-dateutil six urllib3 wcwidth].each do |r|
      venv.pip_install resource(r)
    end

    inreplace buildpath/"src/mount_efs/__init__.py", "/etc", libexec/"etc"
    inreplace buildpath/"src/mount_efs/__init__.py", "/var", libexec/"var"
    inreplace buildpath/"src/watchdog/__init__.py", "/etc", libexec/"etc"
    inreplace buildpath/"src/watchdog/__init__.py", "/var", libexec/"var"
    inreplace buildpath/"dist/efs-utils.conf", "/etc", libexec/"etc"
    inreplace buildpath/"dist/efs-utils.conf", "/var", libexec/"var"
    inreplace buildpath/"dist/amazon-efs-mount-watchdog.plist", "/var", libexec/"var"

    if libexec.to_s.start_with?("/opt/homebrew")
      inreplace buildpath/"dist/amazon-efs-mount-watchdog.plist", "/usr/local", "/opt/homebrew"
    end

    (libexec/"etc/amazon/efs/").mkpath
    libexec.install buildpath/"dist/efs-utils.crt" => "etc/amazon/efs/efs-utils.crt"
    libexec.install buildpath/"dist/efs-utils.conf" => "etc/amazon/efs/efs-utils.conf"

    (libexec/"usr/share/man/man8/").mkpath
    man8.install buildpath/"man/mount.efs.8"

    (prefix/"bin").mkpath
    bin.install buildpath/"src/watchdog/__init__.py" => "amazon-efs-mount-watchdog"
    bin.install buildpath/"src/mount_efs/__init__.py" => "mount.efs"

    (libexec/"var/log/amazon/efs").mkpath

    (libexec/"conffiles").mkpath
    libexec.install buildpath/"dist/amazon-efs-utils.conffiles" => "conffiles/amazon-efs-utils.conffiles"

    (libexec/"etc/init").mkpath
    libexec.install buildpath/"dist/amazon-efs-mount-watchdog.conf" => "etc/init/amazon-efs-mount-watchdog.conf"

    libexec.install buildpath/"dist/amazon-efs-mount-watchdog.plist" => "amazon-efs-mount-watchdog.plist"
  end

  def caveats
    <<~EOS
      To start using Amazon EFS on EC2 x86 Mac instances:
        sudo mkdir -p /Library/Filesystems/efs.fs/Contents/Resources
        sudo ln -s /usr/local/bin/mount.efs /Library/Filesystems/efs.fs/Contents/Resources/mount_efs

      To start using Amazon EFS on EC2 ARM Mac instances:
        sudo mkdir -p /Library/Filesystems/efs.fs/Contents/Resources
        sudo ln -s /opt/homebrew/bin/mount.efs /Library/Filesystems/efs.fs/Contents/Resources/mount_efs

      To stop using Amazon EFS on EC2 Mac instances:
        sudo rm /Library/Filesystems/efs.fs/Contents/Resources/mount_efs

      To enable watchdog for TLS mounts:
        sudo cp #{libexec}/amazon-efs-mount-watchdog.plist /Library/LaunchAgents
        sudo launchctl load /Library/LaunchAgents/amazon-efs-mount-watchdog.plist

      To disable watchdog for TLS mounts:
          sudo launchctl unload /Library/LaunchAgents/amazon-efs-mount-watchdog.plist
    EOS
  end

  test do
    system "false"
  end
end
