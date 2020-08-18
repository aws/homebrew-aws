# EC2 macOS Homebrew Tap

[Homebrew](https://brew.sh) is a package manager for macOS which provides easy installation and update management of [additional software](https://formulae.brew.sh/). This Tap (repository) contains the Formulae that make macOS on EC2 great. This includes:


| Name | Description | Type | Install Name|
|------|-------------|------|-------------|
| Amazon ENA Ethernet | [ENA Driver for networking](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena.html) | Cask | amazon-ena-ethernet |
| Amazon SSM Agent    | [Amazon SSM Agent](https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-agent.html)| Cask| amazon-ssm-agent |
| EC2 macOS Init      | Instance initialization and configuration | Keg | ec2-macos-init |
| EC2 System Monitor for macOS | Sends metrics for CloudWatch metrics | Keg | ec2-macos-system-monitoring | 

## Installing the Tap
The AMIs provided by EC2 come with Homebrew "pretapped" with this Tap. To manually install the Tap, run the the `brew tap` command:

`brew tap aws/homebrew-aws`

## Removing the Tap
If this Tap needs to be removed, Homebrew has a specific [command](https://docs.brew.sh/Taps) for this. Note that this only removes the Tap but preserves anything previously installed.

`brew untap aws/homebrew-aws`

## Usage
This Tap follows standard Homebrew commands, for more information, please refer to the [Homebrew Documentation](https://docs.brew.sh/).

### Updating
The most common use for the Tap is to get the latest software available on a launched instance. Updating is all done via `brew update`.

For example:

| Type  | Update Command|
|-------|--------|
| Full System| `brew upgrade` |
| Keg   |`brew upgrade ec2-macos-init`| 
| Cask  |`brew cask upgrade amazon-ena-ethernet`|

### Installing
There are two primary ways to install software from the Tap. Kegs use the default `brew install` command while Casks have their own sub-command: `brew cask install`.

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
