## List of all installed packages
```
$ sudo apt list --installed
```

## Update versus Upgrade
* From: http://askubuntu.com/questions/222348/what-does-sudo-apt-get-update-do
```
In a nutshell, apt-get update doesn't actually install new versions of software.

apt-get update downloads the package lists from the repositories and "updates" them to get information on the newest versions of packages and their dependencies. It will do this for all repositories and PPAs. From http://linux.die.net/man/8/apt-get:
Used to re-synchronize the package index files from their sources. The indexes of available packages are fetched from the location(s) specified in /etc/apt/sources.list(5). An update should always be performed before an upgrade or dist-upgrade.
apt-get upgrade will fetch new versions of packages existing on the machine if APT knows about these new versions by way of apt-get update.

From http://linux.die.net/man/8/apt-get:
Used to install the newest versions of all packages currently installed on the system from the sources enumerated in /etc/apt/sources.list(5). Packages currently installed with new versions available are retrieved and upgraded; under no circumstances are currently installed packages removed, nor are packages that are not already installed retrieved and installed. New versions of currently installed packages that cannot be upgraded without changing the install status of another package will be left at their current version. [Emphasis mine] An update must be performed first so that apt-get knows that new versions of packages are available.
apt-get dist-upgrade will do the same job which is done by apt-get upgrade, plus it will also intelligently handle the dependencies, so it might remove obsolete packages or add new ones. See here: What is "dist-upgrade" and why does it upgrade more than "upgrade"?

From http://linux.die.net/man/8/apt-get:
In addition to performing the function of upgrade, this option also intelligently handles changing dependencies with new versions of packages; apt-get has a "smart" conflict resolution system, and it will attempt to upgrade the most important packages at the expense of less important ones, if necessary. The /etc/apt/sources.list(5) file contains a list of locations from which to retrieve desired package files. See also apt_preferences(5) for a mechanism for over-riding the general settings for individual packages.
You can combine commands with && as follows:

sudo apt-get update&&sudo apt-get install foo bar baz foo-dev foo-dbg
or to get newest versions possible as per version requirements of dependencies:

sudo apt-get update&&sudo apt-get dist-upgrade
You need sudo both times, but since sudo by default doesn't prompt you within 5 or so minutes since the last sudo operation, you will be prompted for your password only once (or not at all).
```
