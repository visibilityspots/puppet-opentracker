# Class: opentracker::install
#
# Installation of the opentracker package from a repository
class opentracker::install {
  package { $opentracker::pkg_name :
    ensure  => $opentracker::pkg_version
  }
}
