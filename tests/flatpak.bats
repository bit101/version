#!/usr/bin/env bats

@test "version of flatpak installed commands" {
  installed_paks Goodvibes
  installed_paks openh264
}

function installed_paks {
  result=$(version $1 | grep -Ece "checking flatpak...")
  [ $result -eq 1 ]

  result=$(version $1 | grep -Ece "$1 version: ")
  [ $result -eq 1 ]
}


