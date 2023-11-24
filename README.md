# version
What version do I have of ___?

You've been there...

```
java -v // unrecognized option
java -V // unrecognized option
java --version // unrecognized option
java --Version // unrecognized option
java -Version // unrecognized option
java -version // 1.8.0_262
```

There's no standard.

```
gcc --version
node -v
node --version
python -V
perl -v
perl --version
go version
lua -v
rustc --version
```

`version` is a simple, easily updateable script that tells you what version you are on. It has more than 200 apps registered with the syntax required to find version of that app. It will let you know what that syntax is, and then it'll run the command with that syntax and tell you what version you have (assuming the app is installed).

```
version node
# Command: node -v
# v18.13.0
```
```
version gcc
# Command: gcc --version
# gcc (Ubuntu 13.2.0-4ubuntu3) 13.2.0
# Copyright (C) 2023 ...
```
```
version vim
# Command: nvim -version
# NVIM v0.10.0-dev
# Build type: ...
```
```
version nix
# Command: nix --version
# But 'nix' does not seem to be installed
```

## But wait, there's more!

`version` also uses the package manager on your system to find the versions of programs and libraries that it doesn't know about itself. This puts the number of items that `version` can report the version of into the thousands. This includes libraries which are not directly executable, so don't have a version flag. 

This feature currently supports the package managers: 

- `apt` (Linux - Debian, Ubuntu, and derivatives)
- `pacman` (Linux - Arch, Manjaro, and deriviatives)
- `dnf` (Linux - Fedora and derivatives)
- `snap` (Linux)
- `npm` (Mac and Linux)
- `pip` (Mac and Linux)
- `flatpak` (Linux)
- `brew` (Mac and Linux)

Todo (potential):
- `Macports` - MacOS
- `Fink` - MacOS
- `RPM` - Redhat
- `Yum` - Redhat
- `ZYpp` - OpenSUSE
- `Portage` - Gentoo
- `Nix` - Nix

If `version` doesn't know about the command, it will start searching through any of the package managers that are installed and report what it finds:

Examples:

```
version libxml2
# version does not know about 'libxml2'
#   checking apt...
# libxml2 version: 2.9.14+dfsg-1.3
```
```
version systemd
# version does not know about 'systemd'
#   checking apt...
# systemd version: 253.5-1ubuntu6
```
```
version usbutils
# version does not know about 'setuptools'
#   checking apt...
#   checking snap...
#   checking npm...
#   checking pip...
# setuptools version: 68.2.2
```
```
version foo
# version does not know about 'foo'
#   checking apt...
#   checking snap...
#   checking npm...
#   checking pip...
# version was unable to find any info on 'foo'
```

Read more here: [Package Manager Integration](https://github.com/bit101/version/wiki/Package-Manager-Integration)

## Info

- Current release: v1.3.0 (183 recognized tools)

## Installing / Uninstalling

### Arch Linux:

Install through whatever AUR helper you use. e.g.:

```
yay -S version
```
or

```
paru -S version
```
or
```
pamac install version
```

### Install Scripts:

```
cd version
sudo ./install.sh
```

Uninstall:

```
cd version
sudo ./uninstall.sh
```

Or see [Installation](https://github.com/bit101/version/wiki/Installation) for more options.

## More info in the [Wiki](https://github.com/bit101/version/wiki)

- [Installation](https://github.com/bit101/version/wiki/Installation)

- [How it Works](https://github.com/bit101/version/wiki/How-it-Works)

- [Contributing](https://github.com/bit101/version/blob/master/CONTRIBUTING.md)

- [FAQ](https://github.com/bit101/version/wiki/FAQ)
