#!/bin/bash

# Script d'installation de Prometheus sur Kali Linux

set -e   # Dès qu’une commande échoue (retourne un code différent de 0), le script s’arrête immédiatement

# mise à jour du système
sudo apt update

mkdir prometheus
cd prometheus

# télécharger l’archive compressée de Prometheus (version 3.9.1) pour Linux 64 bits.
wget https://github.com/prometheus/prometheus/releases/download/v3.9.1/prometheus-3.9.1.linux-amd64.tar.gz
tar xvfz prometheus-3.9.1.linux-amd64.tar.gz

# lancer serveur Prometheus
./prometheus

# accéder au serveur Prometheus: http://localhost:9090 ou http://IP_VM:9090
# Par défaut, Prometheus écoute sur le port 9090
