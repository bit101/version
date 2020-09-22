#!/usr/bin/env bats

@test "version of pip installed commands" {
  installed_pip eyeD3
  installed_pip pycairo
  installed_pip spotipy
}

function installed_pip {
  result=$(version $1 | grep -Ece "checking pip...")
  [ $result -eq 1 ]

  result=$(version $1 | grep -Ece "$1 version: ")
  [ $result -eq 1 ]
}


