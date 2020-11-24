
sudo cd /opt
echo $PWD
sudo mkdir sysroot sysroot/usr sysroot/opt

export ip_rpi=192.168.1.200

echo $ip_rpi

sudo rsync -avz pi@$(ip_rpi):/lib sysroot
sudo rsync -avz pi@$(ip_rpi):/lib sysroot
sudo  rsync -avz pi@$(ip_rpi):/usr/include sysroot/usr
sudo rsync -avz pi@$(ip_rpi):/usr/lib sysroot/usr
# rsync -avz pi@ip_rpi:/opt/vc sysroot/opt
