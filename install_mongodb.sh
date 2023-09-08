#!/bin/bash

sudo apt update
sudo apt install -y mongodb
sudo systemctl enable mongod
sudo systemctl start mongodb
