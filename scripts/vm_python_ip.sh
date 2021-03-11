#!/bin/sh

set -euqq

sudo apt update
sudo apt --assume-yes install python-pip

wget https://raw.githubusercontent.com/denniszielke/container_demos/master/logging/python-ip/requirements.txt
wget https://raw.githubusercontent.com/denniszielke/container_demos/master/logging/python-ip/echo.py

pip install -r requirements.txt

chmod +x echo.py

python echo.py

#nohup python /home/azureuser/echo.py &
