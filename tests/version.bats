#!/usr/bin/env bats

@test "version of installed known commands" {
  # does not actually test the return value, but it should fail if the version flag is wrong
  known_installed gcc --version
  known_installed awk --version
  known_installed bash --version
  known_installed grep -V
  known_installed make -v
  known_installed python -V
  known_installed vi -version
}

@test "version of non-installed known commands" {
  known_noninstalled swift -version
  known_noninstalled carthage version
  known_noninstalled elixir -v
  known_noninstalled fish -v
  known_noninstalled fossil version
}

@test "version of unknown commands installed via package manager" {
  pm_installed usbutils
  pm_installed systemd
  pm_installed less
  pm_installed sudo
  pm_installed libxml2
}

@test "version of unknown commands not installed via package manager" {
  pm_noninstalled xxxyyyzzz
  pm_noninstalled super_mario_64
  pm_noninstalled flight_simulator_2020
}

# Helper functions

function known_installed {
  result=$(version $1 | grep -Ece "Command: $1 $2")
  [ $result -eq 1 ]
}

function known_noninstalled {
  result=$(version $1 | grep -Ece "Command: $1 $2")
  [ $result -eq 1 ]

  result=$(version $1 | grep -Ece "But .$1. does not seem to be installed")
  [ $result -eq 1 ]
}

function pm_installed {
  result=$(version $1 | grep -Ece "version does not know about .$1.")
  [ $result -eq 1 ]

  result=$(version $1 | grep -Ece "  checking .*\.\.\.")
  [ $result -eq 1 ]

  result=$(version $1 | grep -Ece "$1 version: ")
  [ $result -eq 1 ]
}

function pm_noninstalled {
  result=$(version $1 | grep -Ece "version does not know about .$1.")
  [ $result -eq 1 ]

  result=$(version $1 | grep -Ece "  checking .*\.\.\.")
  # should do multiple checks (snap, npm, pip, etc.)
  [ $result -gt 1 ]
}

