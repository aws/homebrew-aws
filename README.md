# EC2 macOS Homebrew Tap

## Introduction

AWS offers EC2-optimized macOS AMIs for developer use. These AMIs include this Tap for providing a simple way to get these tools and updates to them.

[Homebrew](https://brew.sh) is a package manager for macOS which provides easy installation and update management of [additional software](https://formulae.brew.sh/). This Tap (repository) contains the formulae that are used in the macOS AMI that AWS offers. This includes:


| Name | Description | Type | Install Name|
|------|-------------|------|-------------|
| Amazon ENA | [ENA macOS Network Driver](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena.html) | Cask | amazon-ena-ethernet |
| Amazon SSM Agent    | [Amazon SSM Agent](https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-agent.html)| Cask| amazon-ssm-agent |
| Amazon EFS | [Amazon Elastic File System](https://docs.aws.amazon.com/efs/latest/ug/using-amazon-efs-utils.html) | Formula | amazon-efs-utils |
| EC2 macOS Init      | Instance initialization and configuration, including performance optimization | Keg | ec2-macos-init |
| EC2 System Monitor for macOS | For collecting system monitoring CloudWatch metrics | Keg | ec2-macos-system-monitoring | 

## Installing the Tap
The AMIs provided by EC2 come with Homebrew "pretapped" with this Tap. To manually install the Tap, run the the `brew tap` command:

`brew tap aws/homebrew-aws`

## Removing the Tap
If this Tap needs to be removed, Homebrew has a specific [command](https://docs.brew.sh/Taps) for this. (*Note:* that this only removes the Tap but preserves anything previously installed)

`brew untap aws/homebrew-aws`

## Usage
This Tap follows standard Homebrew commands, for more information, please refer to the [Homebrew Documentation](https://docs.brew.sh/).

### Updating
The most common use for the Tap is to get the latest software available on a launched instance. Updating is all done via `brew update`. This Tap follows standard Homebrew commands, for more information, please refer to the [Homebrew Documentation](https://docs.brew.sh/). It is possible to update a specific Keg or Cask.

For example:

| Type  | Update Command|
|-------|--------|
| Full System| `brew upgrade` |
| Keg   |`brew upgrade ec2-macos-init`| 
| Cask  |`brew upgrade --cask amazon-ena-ethernet`|

### Installing
There are two primary ways to install software from the Tap. Kegs use the default `brew install` command while Casks have their own sub-command: `brew install --cask`. Currently, all the components in the Tap are pre-installed in the macOS AMIs that AWS offers. 

For example:

| Type | Install Command |
|------|-----------------|
| Keg  | `brew install ec2-macos-init` ||
| Cask | `brew install --cask amazon-ena-ethernet` |

### Removing
Removing software is similar to installing software. Kegs and Casks now use the same `brew remove` command.

For example:

| Type | Uninstall Command |
|------|-----------------|
| Keg  | `brew remove ec2-macos-init` |
| Cask | `brew remove amazon-ena-ethernet` |

## Documentation
To get more information about brew you can run `brew help` or `man brew` on a mac1.metal instance or check [Homebrew's documentation](https://docs.brew.sh) for Homebrew's complete documentation.

## License

This project is licensed under the [Apache License, version 2.0](https://www.apache.org/licenses/LICENSE-2.0).
