#!/bin/bash

echo "TBS drivers set for x64 Linux 2.6.x"

./v4l/tbs-x86_64.sh

echo "TBS drivers building..."
make

echo "TBS drivers installing..."
sudo rm -r -f /lib/modules/$(test $VER && echo $VER || uname -r)/kernel/drivers/media
sudo make install

echo "TBS drivers installation done"
echo "You need to reboot..."
