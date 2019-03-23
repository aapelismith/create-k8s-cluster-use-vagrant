#!/bin/sh

sudo apt-get update

sudo apt-get install vagrant virtualbox  -y

vagrant up

echo 'Please exec:   vagrant ssh kube-node1 -c "sudo kubeadm init --pod-network-cidr=172.16.0.0/24" '




