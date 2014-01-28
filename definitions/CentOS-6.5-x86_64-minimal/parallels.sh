# Installing the parallels guest additions
cd /tmp
mount -o loop /home/vagrant/prl-tools-lin.iso /mnt
cd /mnt && ./install --install-unattended
#umount /mnt
