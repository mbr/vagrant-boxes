#!/bin/sh

set -e

cd $1
# vagrant up
cd ..

ID=$(cat basebox/.vagrant/machines/default/virtualbox/id)

echo "Machine ID: ${ID}"
vagrant package --base ${ID}
mv package.box "$1_$(date +%Y%m%d-%H%M%S).box"
