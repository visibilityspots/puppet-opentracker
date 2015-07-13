# Class: opentracker
#
# Initialization class for the opentracker service
class opentracker (
  $pkg_name      = $opentracker::params::pkg_name,
  $pkg_version   = $opentracker::params::pkg_version,
  $service_name  = $opentracker::params::service_name,
  $service_state = $opentracker::params::service_state,
  $config_dir    = $opentracker::params::config_dir,
) inherits opentracker::params {

  include ::opentracker::install
  include ::opentracker::config
  include ::opentracker::service

  Class['::opentracker::install'] ->
  Class['::opentracker::config'] ->
  Class['::opentracker::service']
}
