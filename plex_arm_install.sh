#!/bin/bash
#
## For jessie  on pi only 
## https://downloads.raspberrypi.org/raspbian/images/raspbian-2017-07-05/
###
sudo apt-get update && sudo apt-get install apt-transport-https binutils -y --force-yes
#
wget -O - https://dev2day.de/pms/dev2day-pms.gpg.key | sudo apt-key add -
#
echo "deb https://dev2day.de/pms/ jessie main" | sudo tee /etc/apt/sources.list.d/pms.list  
#
sudo apt-get update
#
sudo apt-get install plexmediaserver -y
#
sudo apt-get install libexpat1 -y
#
sudo chown -R pi:pi /var/lib/plexmediaserver
#
sudo nano /etc/default/plexmediaserver.prev
#
sudo chown -R pi:pi /var/lib/plexmediaserver
#
sudo service plexmediaserver restart
###
##
#
