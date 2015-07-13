# Class: opentracker::service
#
# Class which manages the opentracker service
class opentracker::service {
  service{ $::opentracker::service_name:
    ensure => $::opentracker::service_state,
    enable => true
  }

}
