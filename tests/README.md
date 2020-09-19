# Tests

## How to run

1. Clone BATS: Bash Automated Testing System. https://github.com/sstephenson/bats

2. Install via the instructions.

    cd bats
    sudo ./install /usr/local

3. Back in the verison repo, run the tests:

    bats tests/version.bats

These tests rely on specific programs and libraries being installed on the running system. And on others NOT being installed. Thus you may have to edit the test cases to select different programs that match what you actually have installed on your system.
