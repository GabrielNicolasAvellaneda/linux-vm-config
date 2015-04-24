#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install git

#sudo apt-get install -y nginx
#sudo update-rc.d nginx defaults

# Install Grafana from the deb package.
sudo wget -q -nc https://grafanarel.s3.amazonaws.com/builds/grafana_2.0.0-beta3_amd64.deb
sudo apt-get install -y adduser libfontconfig
sudo dpkg -i grafana_2.0.0-beta3_amd64.deb

# Install Grafana customizations from repository

sudo update-rc.d grafana-server defaults 95 10

# Install the Java JDK
sudo apt-get install -y default-jdk

# Install and configure HBase
if ! [ -d /vagrant/hbase ]; then
  wget -q -nc http://mirror.nbtelecom.com.br/apache/hbase/stable/hbase-1.0.0-bin.tar.gz
  tar -xvzf hbase-1.0.0-bin.tar.gz /vagrant/hbase
  # TODO: Configure hbase
fi

# Install OpenTSDB
wget -q -nc https://github.com/OpenTSDB/opentsdb/releases/download/v2.1.0RC2/opentsdb-2.1.0RC2_all.deb
sudo dpkg -i opentsdb-2.1.0RC2_all.deb

sudo apt-get install -y gnuplot


#if ! [ -d /vagrant/grafana ]; then
#
#  sudo git clone  https://github.com/GabrielNicolasAvellaneda/linux-vm-config-grafana /vagrant/grafana
#
#  sudo sed -i 's/usr\/share\/nginx\/html/vagrant\/grafana/g' /etc/nginx/sites-available/default

#  sudo service nginx restart
#fi



