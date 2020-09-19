#!/usr/bin/env bats

@test "version of installed known commands" {
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

@test "version of unknown commands installed via pacman" {
  pacman_installed usbutils
  pacman_installed systemd
  pacman_installed less
  pacman_installed udev
  pacman_installed cron
}

@test "version of unknown commands not installed via pacman" {
  pacman_noninstalled xxxyyyzzz
  pacman_noninstalled super_mario_64
  pacman_noninstalled flight_simulator_2020
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

function pacman_installed {
  result=$(version $1 | grep -Ece "version does not know about .$1.\. Checking via pacman\.\.\.")
  [ $result -eq 1 ]

  result=$(version $1 | grep -Ece "$1 version: ")
  [ $result -eq 1 ]
}

function pacman_noninstalled {
  result=$(version $1 | grep -Ece "version does not know about .$1.\. Checking via pacman\.\.\.")
  [ $result -eq 1 ]

  result=$(version $1 | grep -Ece "$1 was not installed via pacman.")
  [ $result -eq 1 ]
}

