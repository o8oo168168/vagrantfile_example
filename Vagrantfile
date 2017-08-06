# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|

  #config.vm.box = "ubuntu/trusty64"  #this is the original code.
  
  #Begin: config provider
#  config.vm.provider "vituralbox" do |vb|
#    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50", "--cpus", "1"]
#    vb.memory = 1024
#
#     vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
#     vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
#  end
  #End: config provider

#=begin
  #Creat multi vitural machine.
  #Define a variable and write the vitural machine's settings.
#  config.vm.define "web01" do |web01|
#    web01.vm.box = "ubuntu/trusty64" #assign a os system, just like the origianl code.
#    web01.vm.hostname = "web01" #assign a label, let vagrant knows which vm to access when doing "vagrant ssh".
#    #web01.vm.network "private_network", type: "dhcp" #get the ip address automactically.
#  #Begin: setting network
#  #We can also make it become a public network, but it will usually cause some problems.
#    web01.vm.network "private_network", ip: "10.1.1.11", netmask: "24" #assign a ip address.
#    #web01.vm.network "private_network", ip: "10.1.1.11" #assign a ip address.
#    #web01.vm.network "forwarded_port", guest: 80, host: 8080 
#  #End: setting network
#  end   #end the configuration of the variable.
  
  config.vm.define "django_web01" do |django_web01|
    django_web01.vm.box = "ubuntu/trusty64"
    django_web01.vm.hostname = "django-web01"
    django_web01.vm.provision :shell, path: "~/vagrant_sh/django_init.sh"
    django_web01.vm.network :private_network, ip: "10.1.1.11"
    #django_web01.vm.network "forwarded_port", guest: 80, host: 8080
  end 
 
  config.vm.define "reactjs_web01" do |reactjs_web01|
    reactjs_web01.vm.box = "ubuntu/trusty64"
    reactjs_web01.vm.hostname = "reactjs-web01"
    #reactjs_web01.vm.provision :shell, path: "~/vagrant_sh/reactjs_init.sh"
    reactjs_web01.vm.network :private_network, ip: "10.1.1.12"
    #django_web01.vm.network "forwarded_port", guest: 80, host: 8080
  end  
#=end

end #End tag for Vagrant.configrue()
