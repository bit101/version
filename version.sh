#! /bin/bash 

case $1 in
java)
  $1 -version
  ;;

gcc | rustc)
  $1 --version
  ;;

node | perl | lua)
  $1 -v
  ;;

python)
  $1 -V
  ;;

go)
  $1 version
  ;;

esac
