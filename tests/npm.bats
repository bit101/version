#!/usr/bin/env bats

@test "version of npm installed commands" {
  installed_npm coffeescript
  installed_npm http-server
}

function installed_npm {
  result=$(version $1 | grep -Ece "checking npm...")
  [ $result -eq 1 ]

  result=$(version $1 | grep -Ece "$1 version: ")
  [ $result -eq 1 ]
}


