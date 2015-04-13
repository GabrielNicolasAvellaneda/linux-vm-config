#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install git

#sudo apt-get install -y nginx
#sudo update-rc.d nginx defaults

# Install Grafana from the deb package.
sudo wget -q -nc https://grafanarel.s3.amazonaws.com/builds/grafana_2.0.0-beta3_amd64.deb
sudo apt-get install -y adduser libfontconfig
sudo dpkg -i grafana_2.0.0-beta3_amd64.deb

sudo update-rc.d grafana-server defaults 95 10

#if ! [ -d /vagrant/grafana ]; then
#
#  sudo git clone  https://github.com/GabrielNicolasAvellaneda/linux-vm-config-grafana /vagrant/grafana
#
#  sudo sed -i 's/usr\/share\/nginx\/html/vagrant\/grafana/g' /etc/nginx/sites-available/default

#  sudo service nginx restart
#fi



