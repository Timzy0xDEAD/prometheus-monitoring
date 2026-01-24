#!/bin/bash

# Prometheus installation script on Kali Linux

set -e   # As soon as a command fails, the script stops immediately

# System update
sudo apt update

mkdir prometheus
cd prometheus

# Download the compressed Prometheus archive (version 3.9.1) for 64-bit Linux
wget https://github.com/prometheus/prometheus/releases/download/v3.9.1/prometheus-3.9.1.linux-amd64.tar.gz
tar xvfz prometheus-3.9.1.linux-amd64.tar.gz
cd prometheus-3.9.1.linux-amd64

# Start the Prometheus server
./prometheus

# Access the Prometheus server: http://localhost:9090 or http://VM_IP:9090
# By default, Prometheus listens on port 9090
