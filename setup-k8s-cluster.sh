#!/bin/sh

sudo apt-get update

sudo apt-get install vagrant virtualbox  -y

vagrant up

echo 'Please exec:   vagrant ssh kube-node1 -c \'sudo kubeadm init --pod-network-cidr=172.16.0.0/24 --ignore-preflight-errors "NumCPU"  --apiserver-advertise-address="192.168.250.21" --apiserver-cert-extra-sans="192.168.250.21"\'  '




