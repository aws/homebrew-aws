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

  desc "Utilities for Amazon Elastic File System (EFS)"
  homepage "https://aws.amazon.com/efs/"
  url "https://aws-homebrew.s3.us-west-2.amazonaws.com/formula/amazon-efs-utils/v1.34.3.tar.gz"
  sha256 "10255c7c8b174d2ccee8356e98174544de332401677fed8a05bb0df855205e45"
  license "MIT"

  depends_on "python@3"
  depends_on "stunnel"

  resource "atomicwrites" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/atomicwrites-1.4.0.tar.gz"
    sha256 "ae70396ad1a434f9c7046fd2dd196fc04b12f9e91ffb859164193be8b6168a7a"
  end

  resource "attrs" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/attrs-17.4.0.tar.gz"
    sha256 "1c7960ccfd6a005cd9f7ba884e6316b5e430a3f1a6c37c5f87d8b43f83b54ec9"
  end

  resource "botocore" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/botocore-1.17.53.tar.gz"
    sha256 "d37a83ac23257c85c48b74ab81173980234f8fc078e7a9d312d0ee7d057f90e6"
  end

  resource "configparser" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/configparser-3.5.0.tar.gz"
    sha256 "5308b47021bc2340965c371f0f058cc6971a04502638d4244225c49d80db273a"
  end

  resource "coverage" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/coverage-4.5.4.tar.gz"
    sha256 "e07d9f1a23e9e93ab5c62902833bf3e4b1f65502927379148b6622686223125c"
  end

  resource "entrypoints" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/entrypoints-0.3.tar.gz"
    sha256 "c70dd71abe5a8c85e55e12c19bd91ccfeec11a6e99044204511f9ed547d48451"
  end

  resource "flake8" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/flake8-3.7.9.tar.gz"
    sha256 "45681a117ecc81e870cbf1262835ae4af5e7a8b08e40b944a8a6e6b895914cfb"
  end

  resource "funcsigs" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/funcsigs-1.0.2.tar.gz"
    sha256 "a7bb0f2cf3a3fd1ab2732cb49eba4252c2af4240442415b4abce3b87022a8f50"
  end

  resource "jmespath" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/jmespath-0.10.0.tar.gz"
    sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
  end

  resource "mccabe" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/mccabe-0.6.1.tar.gz"
    sha256 "dd8d182285a0fe56bace7f45b5e7d1a6ebcbf524e8f3bd87eb0f125271b8831f"
  end

  resource "mock" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/mock-2.0.0.tar.gz"
    sha256 "b158b6df76edd239b8208d481dc46b6afd45a846b7812ff0ce58971cf5bc8bba"
  end

  resource "more-itertools" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/more-itertools-8.6.0.tar.gz"
    sha256 "b3a9005928e5bed54076e6e549c792b306fddfe72b2d1d22dd63d42d5d3899cf"
  end

  resource "packaging" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/packaging-20.9.tar.gz"
    sha256 "5b327ac1320dc863dca72f4514ecc086f31186744b84a230374cc1fd776feae5"
  end

  resource "pbr" do
    url "https://aws-homebrew.s3.us-west-2.amazonaws.com/resource/a1f34e42/pbr-5.10.0.tar.gz"
    sha256 "cfcc4ff8e698256fc17ea3ff796478b050852585aa5bae79ecd05b2ab7b39b9a"
  end

  resource "pluggy" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/pluggy-0.13.0.tar.gz"
    sha256 "fa5fa1622fa6dd5c030e9cad086fa19ef6a0cf6d7a2d12318e10cb49d6d68f34"
  end

  resource "py" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/py-1.8.0.tar.gz"
    sha256 "dc639b046a6e2cff5bbe40194ad65936d6ba360b52b3c3fe1d08a82dd50b5e53"
  end

  resource "pycodestyle" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/pycodestyle-2.6.0.tar.gz"
    sha256 "c58a7d2815e0e8d7972bf1803331fb0152f867bd89adf8a01dfd55085434192e"
  end

  resource "pyflakes" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/pyflakes-2.2.0.tar.gz"
    sha256 "35b2d75ee967ea93b55750aa9edbbf72813e06a66ba54438df2cfac9e3c27fc8"
  end

  resource "pyparsing" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/pyparsing-2.4.7.tar.gz"
    sha256 "c203ec8783bf771a155b207279b9bccb8dea02d8f0c9e5f8ead507bc3246ecc1"
  end

  resource "pytest" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/pytest-4.6.7.tar.gz"
    sha256 "9ea149066f566c943d3122f4b1cf1b577cab73189d11f490b54703fa5fa9df50"
  end

  resource "pytest-cov" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/pytest-cov-2.8.1.tar.gz"
    sha256 "cc6742d8bac45070217169f5f72ceee1e0e55b0221f54bcf24845972d3a47f2b"
  end

  resource "pytest-html" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/pytest-html-1.19.0.tar.gz"
    sha256 "74ad1ad9bf4c2c15184e4d7f31fe28fa09c19ff6a459e65c106be88f1e5349cd"
  end

  resource "pytest-metadata" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/pytest-metadata-1.7.0.tar.gz"
    sha256 "2d495b61542cb25dfc52fbf40c7a02220c7c127b7ba8974e6c72d6c9593c547a"
  end

  resource "pytest-mock" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/pytest-mock-1.11.2.tar.gz"
    sha256 "ea502c3891599c26243a3a847ccf0b1d20556678c528f86c98e3cd6d40c5cf11"
  end

  resource "python-dateutil" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  resource "six" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/six-1.11.0.tar.gz"
    sha256 "70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9"
  end

  resource "urllib3" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/urllib3-1.25.11.tar.gz"
    sha256 "8d7eaa5a82a1cac232164990f04874c594c9453ec55eef02eab885aa02fc17a2"
  end

  resource "wcwidth" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/a1f34e42/wcwidth-0.2.5.tar.gz"
    sha256 "c4d647b99872929fdb7bdcaa4fbe7f01413ed3d98077df798530e5b04f116c83"
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
      To start using Amazon EFS on EC2 x86 Mac instances (mac1.metal):
        sudo mkdir -p /Library/Filesystems/efs.fs/Contents/Resources
        sudo ln -s /usr/local/bin/mount.efs /Library/Filesystems/efs.fs/Contents/Resources/mount_efs

      To start using Amazon EFS on EC2 M1 Mac instances (mac2.metal):
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
