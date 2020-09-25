# Tests

## How to run

1. Clone BATS: Bash Automated Testing System. https://github.com/sstephenson/bats

2. Install via the instructions.

        cd bats
        sudo ./install /usr/local

3. Back in the version repo, run the tests:

        cd <path_to_version_repo>/tests
        bats version.bats
        bats snap.bats
        bats pip.bats
        bats flaptak.bats
        bats brew.bats
        bats npm.bats

To run all tests:

        bats *.bats

These tests rely on specific programs and libraries being installed on the running system. And on others NOT being installed. Thus you may have to edit the test cases to select different programs that match what you actually have installed on your system. Or install the programs that it is looking for.

This was tested on Fedora 32 Workstation (dnf), Ubuntu 20.04, and Manjaro XFCE (pacman), and Macos
