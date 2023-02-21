#!/bin/bash

echo -------------------------------
echo "  Grafana Config"
read -p 'Email: ' email_alert
read -p 'App-Password: ' appPass_alert
read -p 'From-Name: ' fromName_alert
echo -------------------------------
sed -i -e 's/$email/'$email_alert'/' -e 's/$appPass/'$appPass_alert'/' -e 's/$from_name/'$fromName_alert'/' /opt/mvisionControl/setup/setup_Grafana/configFile/grafana.ini
cd /opt/mvisionControl/setup/setup_Grafana
docker-compose up -d
cd ~
echo -------------------------------
docker ps -a
echo -------------------------------
