Vagrant.configure("2") do |config|

	(1..3).each do |i|

		config.vm.define "kube-node#{i}" do |node|

		# 设置虚拟机的Box
		node.vm.box = "ubuntu/bionic64"

		# 设置虚拟机的主机名
		node.vm.hostname="kube-node#{i}"

		# 设置虚拟机的IP
		node.vm.network "private_network", ip: "192.168.250.2#{i}"

		# 设置主机与虚拟机的共享目录
		# node.vm.synced_folder "~/Desktop/share", "/home/vagrant/share"

		# VirtaulBox相关配置
		node.vm.provider "virtualbox" do |v|

			# 设置虚拟机的名称
			v.name = "node#{i}"

			# 设置虚拟机的内存大小  
			v.memory = 1024

			# 设置虚拟机的CPU个数
			v.cpus = 1
		end
  
		# 使用shell脚本进行软件安装和配置
		node.vm.provision "shell", inline: <<-SHELL
			snap install docker
			systemctl enable snap.docker.dockerd.service
			usermod -aG root vagrant
			cat >> /etc/hosts  << EOF		
			192.168.250.21	kube-node1
			192.168.250.22	kube-node2
			192.168.250.23	kube-node3
			EOF
			snap install kubeadm --classic 
			snap install kubectl --classic 	
			snap install kubelet  --classic
			systemctl enable snap.kubelet.daemon.service
		SHELL

		end
	end
end

