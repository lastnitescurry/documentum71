# == Class: baseconfig
#
# Performs initial configuration tasks for all Vagrant boxes.
#
class baseconfig {

  $hosts = hiera_hash('hosts')
  create_resources('host', $hosts)

}
