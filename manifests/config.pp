# Class: opentracker::config
#
# Class which configures the opentracker service
class opentracker::config {
  file { $::opentracker::config_dir :
    ensure => 'directory',
    mode   => '0555',
  }

  file { "${::opentracker::config_dir}/opentracker.conf":
    content => template('opentracker/opentracker.conf.erb'),
    require => Package[$opentracker::pkg_name],
    notify  => Service[$opentracker::service_name];
  }
}
