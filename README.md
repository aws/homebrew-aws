# Introduction

AWS offers EC2-optimized [macOS AMI] for developers use.

This repository helps guide developers wanting to learn about the content of EC2-optimized macOS AMI and build a custom AMI.

# EC2 macOS Homebrew Tap

[Homebrew](https://brew.sh) is a package manager for macOS which provides easy installation and update management of [additional software](https://formulae.brew.sh/). This Tap (repository) contains the formulae that are used in the macOS AMI that AWS offers. This includes:


| Name | Description | Type | Install Name|
|------|-------------|------|-------------|
| Amazon ENA | [ENA macOS Network Driver](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena.html) | Cask | amazon-ena-ethernet |
| Amazon SSM Agent    | [Amazon SSM Agent](https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-agent.html)| Cask| amazon-ssm-agent |
| EC2 macOS Init      | Instance initialization and configuration, including performance optimization | Keg | ec2-macos-init |
| EC2 System Monitor for macOS | For collecting CloudWatch metrics | Keg | ec2-macos-system-monitoring | 

## Installing the Tap

The AMIs provided by AWS come with Homebrew "pretapped" with this Tap. To manually install the Tap on other macOS, run  the `brew tap` command:

`brew tap aws/homebrew-aws`

## Removing the Tap
If the developer with to remove the Tap from the macOS AMI, Use the next command. (*Note:* This only removes the Tap but preserves anything previously installed)

`brew untap aws/homebrew-aws`

## Usage
This Tap follows standard Homebrew commands, for more information, please refer to the [Homebrew Documentation](https://docs.brew.sh/).

### Updating
The most common use for the Tap is to get the latest software available on a launched instance. Updating is all done via `brew update`. It is possible to update specific Keg or Cask. For example:

| Type  | Update Command|
|-------|--------|
| Full System| `brew upgrade` |
| Keg   |`brew upgrade ec2-macos-init`| 
| Cask  |`brew cask upgrade amazon-ena-ethernet`|

### Installing

All the components are pre-installed in the macOS AMI that AWS offers. 

For manual install, there are two primary ways to install software from the Tap. Kegs use the default `brew install` command while Casks have their own sub-command: `brew cask install`.

For example:

| Type | Install Command |
|------|-----------------|
| Keg  | `brew install ec2-macos-init` ||
| Cask | `brew cask install amazon-ena-ethernet` |

### Removing
Removing software is similar to installing software. Kegs use the default `brew remove` command and Casks use `brew cask remove`.

For example:

| Type | Uninstall Command |
|------|-----------------|
| Keg  | `brew remove ec2-macos-init` |
| Cask | `brew cask remove amazon-ena-ethernet` |

## Documentation
To get more information about brew you can run `brew help` or `man brew` on a mac1.metal instance or check [Homebrew's documentation](https://docs.brew.sh) for Homebrew's complete documentation.

## License

This project is licensed under the [Apache License, version 2.0](https://www.apache.org/licenses/LICENSE-2.0).
