# 安装 virtualbox 

1. 访问`virtualbox`官网下载`virtualbox`
2. `ubuntu` 使用 `sudo apt update && sudo apt install virtualbox -y` 安装 `virtualbox`
3. `mac` 使用 `brew install virtualbox`

# 安装 vagrant

访问 ： <https://www.vagrantup.com/downloads.html> 下载对应平台的安装包.



# 启动三台 1k1G 虚拟机

`git clone https://github.com/aapelismith/create-k8s-cluster-use-vagrant.git  Vagrants`

`cd Vagrants` 

`vagrant box add ubuntu/bionic64`

`vagrant up  # 执行完毕后3台虚拟机将被启动.`



# 使用kubeadm启动一个k8s集群

`vagrant status`

`vagrant ssh kube-node1 #登录 kube-node1`

# 在 kube-node1 上执行

`sudo kubeadm init --pod-network-cidr=172.16.0.0/16 --ignore-preflight-errors "NumCPU"  --apiserver-advertise-address="192.168.250.21" --apiserver-cert-extra-sans="192.168.250.21"`

