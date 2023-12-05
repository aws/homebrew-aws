# EC2 macOS Homebrew Tap

AWS offers EC2-optimized macOS AMIs for developer use.  The EC2 Mac AMIs provided by AWS include this Tap by default, which provides a simple way to get these tools and updates to them.

## What is Homebrew?

[Homebrew](https://brew.sh) is a package manager for macOS, which provides easy installation and update management of [additional software](https://formulae.brew.sh/).

## What is a Tap?

A third-party (in relation to Homebrew) repository, which provides installable packages on macOS.

See more at [https://docs.brew.sh/Taps](https://docs.brew.sh/Taps).

## What packages are available in this Tap?

This Tap (repository) contains the formulae that are used in the macOS AMI(s) that are offered by AWS for launching EC2 Mac instances.

This includes:

| Name | Description | Type | Package Name|
|------|-------------|------|-------------|
| Amazon ENA | [EC2 Mac ENA Network Driver for macOS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena.html) | Cask | amazon-ena-ethernet |
| Amazon ENA DriverKit | [EC2 Mac ENA Network Driver for macOS Monterey and later (arm64 only)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/enhanced-networking-ena.html) | Cask | amazon-ena-ethernet-dext |
| Amazon EFS | [Amazon Elastic File System](https://docs.aws.amazon.com/efs/latest/ug/using-amazon-efs-utils.html) | Keg | amazon-efs-utils |
| Amazon SSM Agent | [Amazon SSM Agent](https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-agent.html)| Cask| amazon-ssm-agent |
| EC2 macOS Init | Instance initialization and configuration, including performance optimization | Cask | ec2-macos-init |
| EC2 System Monitor for macOS | For collecting system monitoring CloudWatch metrics on mac1.metal instances | Cask | ec2-macos-system-monitoring |
| EC2 macOS Utils | Provides common command-line tool for customizing EC2 Mac instances | Cask | ec2-macos-utils | 

## How do I install the packages from this Tap?

This Tap follows standard Homebrew commands, for more information, please refer to the [Homebrew Documentation](https://docs.brew.sh/). Updating homebrew itself is done via the following command:

```sh
brew update
```

The above command will update homebrew itself and this comamnd should always be run prior to attempts to install or update any packages with brew.

### Installing the Tap

The macOS AMIs provided by AWS already come with Homebrew installed and this Tap "pretapped". To manually install the Tap, use the the `brew tap` command:

```sh
brew tap aws/homebrew-aws
```

### Removing the Tap

If this Tap needs to be removed for any reason, Homebrew includes a specific [command](https://docs.brew.sh/Taps) for this. (*Note:* This will only remove the Tap and it will preserve anything that was previously installed)

```sh
brew untap aws/homebrew-aws
```

### Updating Packages

To update a specific package (Keg or Cask) that has been installed from this tap. Kegs use the default `brew upgrade <package>` command, while Casks have their own sub-command: `brew upgrade --cask <package>`.

For example:

| Type  | Update Command|
|-------|--------|
| Full System| `brew upgrade` |
| Keg   |`brew upgrade amazon-efs-utils`| 
| Cask  |`brew upgrade --cask amazon-ena-ethernet-dext`|

### Installing Packages

There are two primary ways to install software from the Tap. Kegs use the default `brew install <package>` command, while Casks have their own sub-command: `brew install --cask <package>`.

For example:

| Type | Install Command |
|------|-----------------|
| Keg  | `brew install amazon-efs-utils` ||
| Cask | `brew install --cask amazon-ena-ethernet-dext` |

### Removing Packages

Removing software is similar to installing software. Kegs and Casks now use the same `brew remove <package>` command.

For example:

| Type | Uninstall Command |
|------|-----------------|
| Keg  | `brew remove amazon-efs-utils` |
| Cask | `brew remove amazon-ssm-agent` |

## Documentation

To get more information about brew you can run `brew help` or `man brew` on a mac1.metal instance or check [Homebrew's documentation](https://docs.brew.sh) for Homebrew's complete documentation.

## License

This project is licensed under the [Apache License, version 2.0](https://www.apache.org/licenses/LICENSE-2.0).
