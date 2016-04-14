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

  servers.each do |server|
    config.vm.define server["name"] do |cfg|

      cfg.vm.box = server["box"]
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
    end
  end

  config.ssh.forward_agent = true

end
