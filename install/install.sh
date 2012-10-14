#!/bin/sh

# download mongodb 2.2
cd /tmp
wget http://fastdl.mongodb.org/linux/mongodb-linux-x86_64-static-legacy-2.2.0.tgz

# Extract
mkdir /home/mongodb-2.2.0
tar -vzxf /tmp/mongodb-linux-x86_64-static-legacy-2.2.0.tgz -C /home/mongodb-2.2.0

# Move dir
mv /home/mongodb-2.2.0/mongodb-linux-x86_64-static-legacy-2.2.0/* /home/mongodb-2.2.0
rm -rf /home/mongodb-2.2.0/mongodb-linux-x86_64-static-legacy-2.2.0

# Add to Path
echo "PATH=$PATH:/home/mongodb-2.2.0/bin/" >> /etc/environment
source /etc/environment

# Get Data
mkdir /home/mongodb-2.2.0/scale
cd /home/mongodb-2.2.0/scale
wget https://raw.github.com/obuisson/mongodb-config/master/install/zips.json

# Setup Dir
mkdir /home/mongodb-2.2.0/log
mkdir /home/mongodb-2.2.0/data
