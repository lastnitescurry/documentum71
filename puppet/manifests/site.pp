#- file:  manifests/site.pp
#
#  Base file to import the classes for each node
#
# https://docs.puppet.com/hiera/latest/complete_example.html
#
node default {
  hiera_include('classes')
}
