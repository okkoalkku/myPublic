#!/bin/sh
sudo mkdir /mnt/iso
sudo mount -t iso9660 -o loop /home/vagrant/guest/guest.iso /mnt/iso
mkdir /tmp/ISO
cp -pRf /mnt/iso /tmp/ISO
sudo apt-get install -y dkms build-essential linux-headers-generic linux-headers-$(uname -r)
sudo sh /tmp/ISO/iso/VBoxLinuxAdditions.run
