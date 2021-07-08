# EC2 macOS Homebrew Tap

## Introduction

AWS offers EC2-optimized [macOS AMIs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-mac-instances.html#ec2-macos-images) for developer use. These AMIs include this Tap for providing a simple way to get these tools and updates to them.

[Homebrew](https://brew.sh) is a package manager for macOS which provides easy installation and update management of [additional software](https://formulae.brew.sh/). This Tap (repository) contains the formulae that are used in the macOS AMI that AWS offers. This includes:


| Name | Description | Type | Install Name|
|------|-------------|------|-------------|
| Amazon ENA | [ENA macOS Network Driver](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena.html) | Cask | amazon-ena-ethernet |
| Amazon SSM Agent    | [Amazon SSM Agent](https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-agent.html)| Cask| amazon-ssm-agent |
| Amazon EFS | [Amazon Elastic File System](https://docs.aws.amazon.com/efs/latest/ug/using-amazon-efs-utils.html) | Keg | amazon-efs-utils |
| EC2 macOS Init      | Instance initialization and configuration, including performance optimization | Cask | ec2-macos-init |
| EC2 System Monitor for macOS | For collecting system monitoring CloudWatch metrics | Cask | ec2-macos-system-monitoring | 

## Installing the Tap
The AMIs provided by AWS come with Homebrew "pretapped" with this Tap. To manually install the Tap, run the the `brew tap` [command](https://docs.brew.sh/Taps):

`brew tap aws/aws`

## Removing the Tap
To manually remove the tap, run the `brew untap` [command](https://docs.brew.sh/Taps):
(*Note:* This only removes the Tap but preserves any packages previously installed from that Tap.)

`brew untap aws/aws`

## Usage
This Tap follows standard Homebrew commands, for more information, please refer to the [Homebrew Documentation](https://docs.brew.sh/).

### Updating
The most common use for the Tap is to get the latest software available on a launched instance. Updating is all done via `brew upgrade`. This Tap follows standard Homebrew commands, for more information, please refer to the [Homebrew Documentation](https://docs.brew.sh/). It is possible to update a specific package, or all installed packages.

For example:

| Scope  | Update Command|
|--------|--------|
| All Packages | `brew upgrade` |
| Specific Package   |`brew upgrade amazon-efs-utils`| 

### Installing
To install software from the Tap, use the `brew install` command. All the components in the Tap are pre-installed in the macOS AMIs that AWS offers. 

For example:

| Install Command |
|-----------------|
| `brew install amazon-ena-ethernet` |

### Removing
Removing software is similar to installing software. 

For example:

| Uninstall Command |
|-----------------|
| `brew remove amazon-ssm-agent` |

## Documentation
To get more information about [brew](https://brew.sh) you can run `brew help` or `man brew` on a macOS instance, or check [Homebrew's documentation](https://docs.brew.sh) for Homebrew's complete documentation.

## License

This project is licensed under the [Apache License, version 2.0](https://www.apache.org/licenses/LICENSE-2.0).
