#!/bin/sh

cd "$(dirname "$0")"

rm -f source/*.x
shc -f source/shellmail

mkdir shellmail-2.0/opt
mkdir shellmail-2.0/opt/shellmail

cp -fr source/shellmail.conf shellmail-2.0/opt/shellmail/
cp -fr source/shellmail.x shellmail-2.0/opt/shellmail/shellmail

chmod -R 755 shellmail-2.0/DEBIAN/

rm -f ./*.deb

dpkg-deb --build ./shellmail-2.0

mv shellmail-2.0.deb shellmail_install-2.0.deb

rm -fr shellmail-2.0/opt/shellmail
