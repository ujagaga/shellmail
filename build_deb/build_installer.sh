#!/bin/sh

cd "$(dirname "$0")"

# removing any leftovers from previous build
rm -f ./*.deb

# creating binary from shell script
shc -f ../shellmail

# creating necessary folders (in case they do not exist) for building the debian package
mkdir shellmail-2.0/opt
mkdir shellmail-2.0/opt/shellmail

# copy configuration and binary
cp -fr ../shellmail.conf shellmail-2.0/opt/shellmail/
cp -fr ../shellmail.x shellmail-2.0/opt/shellmail/shellmail

# setting up necessary folder permissions
chmod -R 755 shellmail-2.0/DEBIAN/

# building the deb package
dpkg-deb --build ./shellmail-2.0

# renaming the package
mv shellmail-2.0.deb shellmail_install-2.0.deb

# removing leftovers
rm -f ../*.x
rm -f ../*.x.c
