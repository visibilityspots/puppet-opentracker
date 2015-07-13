# Class opentracker::params
#
# This class contains every parameter which will be used in this puppet module
# for setting up the opentracker agent on a server
class opentracker::params {
  $pkg_name      = 'opentracker'
  $pkg_version   = 'installed'
  $service_name  = 'opentracker'
  $service_state = 'running'
  $config_dir    = '/opt/opentracker'
}
