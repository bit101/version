#!/usr/bin/env bats

@test "version of brew installed commands" {
  installed_brew pyenv
  installed_brew patchelf
}

function installed_brew {
  result=$(version $1 | grep -Ece "checking brew...")
  [ $result -eq 1 ]

  result=$(version $1 | grep -Ece "$1 version: ")
  [ $result -eq 1 ]
}


