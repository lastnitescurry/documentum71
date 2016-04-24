# Credit where due, based on the work of Scottish Government
# https://github.com/scottishgovernment/mygovscot-puppet-blogpost
#
VAGRANTFILE_API_VERSION = "2"
require 'yaml'

# Path to directory containing this Vagrantfile with any symlinks resolved.
directory = Pathname.new(File.realpath(__FILE__)).parent()

# Relative path from the Vagrant shared folder to that directory.
rpath = directory.relative_path_from(Pathname.new(File.absolute_path(__FILE__)).parent())

serversFile = File.exists?("servers.yaml") ? "servers.yaml" : directory.join("servers.yaml")
servers = YAML.load_file(serversFile)

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Update virutal box additions
  config.vbguest.no_remote = true
  config.vbguest.no_install = true

  servers.each do |server|
    config.vm.define server["name"] do |cfg|

      cfg.vm.box = server["box"]
      if server["box_url"] != '' 
        cfg.vm.box_url = server["box_url"]
      end
      cfg.vm.hostname = server["name"]

      cfg.vm.provider "virtualbox" do |v|
        v.memory  = server["ram"] || "2048"
        v.cpus = server["cpu"] || "2"
      end

      (server['forwarded_port'] || []).each do |i, port|
        if port['guest'] != '' && port['host'] != ''
          cfg.vm.network :forwarded_port, guest: port['guest'].to_i, host: port['host'].to_i
        end
      end
      (server['synced_folder'] || []).each do |i, folder|
        if folder['local'] != '' && folder['remote'] != ''
          cfg.vm.synced_folder(folder['local'], folder['remote'], :mount_options => ["dmode=777","fmode=666"])
        end
      end
    end
  end

  config.ssh.forward_agent = true

  # TODO move to server configuration file
  # Reset UNIX users passwords
  # https://github.com/puphpet/packer-templates/blob/master/centos-6-x86_64/http/ks.cfg
  config.vm.provision :shell, :inline => "echo \"vagrant\"|passwd --stdin vagrant"
  config.vm.provision :shell, :inline => "echo \"vagrant\"|passwd --stdin root"
  # Update software in virtual machine
  config.vm.provision :shell, :inline => "yum --assumeyes update"
end
