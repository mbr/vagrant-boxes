#!/bin/sh

set -e

cd basebox
# vagrant up
cd ..

ID=$(cat basebox/.vagrant/machines/default/virtualbox/id)

echo "Machine ID: ${ID}"
vagrant package --base ${ID}
