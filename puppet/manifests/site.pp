#- file:  manifests/site.pp
#
#  Base file to import the classes for each node
#
# https://docs.puppet.com/hiera/latest/complete_example.html
#
node default {

## we need to figure out how the machine is built
#(this bit I was missing and mucked me up at hte end of a log day)

  $role = hiera('role',{})
  
  hiera_include('classes')
}
