# == Class: misc::docker
#
class misc::docker {

  class {'docker':
    docker_users => ['rudi.broekhuizen'],
  }

  class {'docker::compose':
    ensure => present,
  }
 
}
