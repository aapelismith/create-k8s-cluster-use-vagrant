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
			v.name = "kube-node#{i}"

			# 设置虚拟机的内存大小  
			v.memory = 1200

			# 设置虚拟机的CPU个数
			v.cpus = 1
		end
  
		# 使用shell脚本进行软件安装和配置
		node.vm.provision "shell", inline: <<-SHELL
			echo -e  "\n192.168.250.21	kube-node1 \n192.168.250.22	kube-node2 \n192.168.250.23	kube-node3\n" >> /etc/hosts
		SHELL

		end
	end
end

