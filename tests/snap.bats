#!/usr/bin/env bats

@test "version of snap installed commands" {
  installed_snaps core
  installed_snaps core18
  installed_snaps gtk-common-themes
  installed_snaps snappy-debug
}

function installed_snaps {
  result=$(version $1 | grep -Ece "checking snap...")
  [ $result -eq 1 ]

  result=$(version $1 | grep -Ece "$1 version: ")
  [ $result -eq 1 ]
}


