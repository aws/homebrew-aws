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

  version "3.3.3"
  sha256 "052393c93be97dcc48f0c9e27f57596d64744bdddd5ebdb2eaab9261b264ae0b"

  url "https://aws-homebrew.s3.us-west-2.amazonaws.com/formula/amazon-efs-utils/v#{version}.tar.gz"
  desc "Utilities for Amazon Elastic File System (EFS)"
  homepage "https://aws.amazon.com/efs/"
  license "MIT"

  depends_on "python@3"
  depends_on "stunnel"

  resource "atomicwrites" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/atomicwrites-1.4.1.tar.gz"
    sha256 "81b2c9071a49367a7f770170e5eec8cb66567cfbbc8c73d20ce5ca4a8d71cf11"
  end

  resource "attrs" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/attrs-26.1.0.tar.gz"
    sha256 "d03ceb89cb322a8fd706d4fb91940737b6642aa36998fe130a9bc96c985eff32"
  end

  resource "botocore" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/botocore-1.43.110.tar.gz"
    sha256 "888cd54d59502e2195dac30805e5c08dd1be5416932a3793373e81b8f463e006"
  end

  resource "configparser" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/configparser-7.2.0.tar.gz"
    sha256 "b629cc8ae916e3afbd36d1b3d093f34193d851e11998920fdcfc4552218b7b70"
  end

  resource "coverage" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/coverage-7.16.2.tar.gz"
    sha256 "ca64d9f1f384f151b9511bec01126072acd2f313439f8ed015a22d8790aab6fa"
  end

  resource "entrypoints" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/entrypoints-0.4.tar.gz"
    sha256 "b706eddaa9218a19ebcd67b56818f05bb27589b1ca9e8d797b74affad4ccacd4"
  end

  resource "flake8" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/flake8-7.4.1.tar.gz"
    sha256 "84ea5afcaf344487b0ea5baaebb8100f4cfaebc01f755998f75876664029f587"
  end

  resource "funcsigs" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/funcsigs-1.0.2.tar.gz"
    sha256 "a7bb0f2cf3a3fd1ab2732cb49eba4252c2af4240442415b4abce3b87022a8f50"
  end

  resource "jmespath" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/jmespath-1.1.0.tar.gz"
    sha256 "472c87d80f36026ae83c6ddd0f1d05d4e510134ed462851fd5f754c8c3cbb88d"
  end

  resource "mccabe" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/mccabe-0.7.0.tar.gz"
    sha256 "348e0240c33b60bbdf4e523192ef919f28cb2c3d7d5c7794f74009290f236325"
  end

  resource "mock" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/mock-5.2.0.tar.gz"
    sha256 "4e460e818629b4b173f32d08bf30d3af8123afbb8e04bb5707a1fd4799e503f0"
  end

  resource "more-itertools" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/more_itertools-11.1.0.tar.gz"
    sha256 "48e8f4d9e7e5878571ecf6f2b4e57634f93cd474cc8cfbd2376f2d11b396e30d"
  end

  resource "packaging" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/packaging-26.3.tar.gz"
    sha256 "94edc256424af38762eb31306eed28beb9f0efc50a8837492c9d6fd6004aed79"
  end

  resource "pbr" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/pbr-7.1.3.tar.gz"
    sha256 "9a4a85b84e906337708009af0b5f5cdabeeb72d4dc213c9e97974da54fd9acc5"
  end

  resource "pluggy" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/pluggy-1.6.0.tar.gz"
    sha256 "7dcc130b76258d33b90f61b658791dede3486c3e6bfb003ee5c9bfb396dd22f3"
  end

  resource "py" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/py-1.11.0.tar.gz"
    sha256 "51c75c4126074b472f746a24399ad32f6053d1b34b68d2fa41e558e6f4a98719"
  end

  resource "pycodestyle" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/pycodestyle-2.15.0.tar.gz"
    sha256 "318f5db083869b4c4dad922d0b11124fb27ab181b6730b93371da671e31bd50e"
  end

  resource "pyflakes" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/pyflakes-4.0.3.tar.gz"
    sha256 "94762a3a5a343a79b28754f96c554bce057a592a4896907d73f0369fe824e053"
  end

  resource "pyparsing" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/pyparsing-3.3.3.tar.gz"
    sha256 "928ae7e20211f3b6f3915a72f06a0cfd29ab9d24279dd6346b6b1a7146397d36"
  end

  resource "pytest" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/pytest-9.1.1.tar.gz"
    sha256 "1088fbde8f2b49d95a549a195707afa7a76a3ce9bcadc26b6d71f0ffda5fe313"
  end

  resource "pytest-cov" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/pytest_cov-7.1.0.tar.gz"
    sha256 "30674f2b5f6351aa09702a9c8c364f6a01c27aae0c1366ae8016160d1efc56b2"
  end

  resource "pytest-html" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/pytest_html-4.2.0.tar.gz"
    sha256 "b6a88cba507500d8709959201e2e757d3941e859fd17cfd4ed87b16fc0c67912"
  end

  resource "pytest-metadata" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/pytest_metadata-3.1.1.tar.gz"
    sha256 "d2a29b0355fbc03f168aa96d41ff88b1a3b44a3b02acbe491801c98a048017c8"
  end

  resource "pytest-mock" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/pytest_mock-3.16.0.tar.gz"
    sha256 "5a8395528b8f498205f3718f575228d0edaed7425fff638f87d1a6c3e0383636"
  end

  resource "python-dateutil" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "six" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "urllib3" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/urllib3-2.8.0.tar.gz"
    sha256 "63bf2ead4c879426ebf22ef2a781eeb4aa3b4ae798a0435506f8687fd5bb9b63"
  end

  resource "wcwidth" do
    url "https://aws-homebrew.s3-us-west-2.amazonaws.com/resource/78b42bd8/wcwidth-0.9.2.tar.gz"
    sha256 "ae0ef90b90f6af38b54f1fe6d58662ec33b3cb4b8391958a62416d654231727b"
  end

  def install
    venv = virtualenv_create(libexec, "python3")
    %w[atomicwrites attrs botocore configparser coverage entrypoints flake8 funcsigs jmespath mccabe
       mock more-itertools packaging pbr pluggy py pycodestyle pyflakes pyparsing pytest pytest-cov pytest-html
       pytest-metadata pytest-mock python-dateutil six urllib3 wcwidth].each do |r|
      venv.pip_install resource(r)
    end

    inreplace buildpath/"src/efs_utils_common/constants.py", "/etc", libexec/"etc"
    inreplace buildpath/"src/efs_utils_common/constants.py", "/var", libexec/"var"
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
    (bin/"efs_utils_common").install Dir[buildpath/"src/efs_utils_common/*.py"]
    (bin/"mount_efs").install Dir[buildpath/"src/mount_efs/*.py"]

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
        sudo cp #{libexec}/amazon-efs-mount-watchdog.plist /Library/LaunchDaemons
        sudo launchctl bootstrap system /Library/LaunchDaemons/amazon-efs-mount-watchdog.plist

      To disable watchdog for TLS mounts:
          sudo launchctl bootout system/amazon-efs-mount-watchdog
    EOS
  end

  test do
    system "false"
  end
end
