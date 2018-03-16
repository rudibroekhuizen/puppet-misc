# == Class: misc::docker
#
class misc::docker {

  class {'docker':
    docker_users  => ['rudi.broekhuizen'],
    #manage_kernel => false
  }

  class {'docker::compose':
    version => '1.19.0'
  }
 
}
