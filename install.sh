#! /bin/bash

cp -f version /usr/local/bin

# man page
gzip -k ./man/version.1
sudo mkdir -p /usr/local/man/man1/
sudo cp ./man/version.1.gz /usr/local/share/man/man1/
rm ./man/version.1.gz
