class sshd::params {

  case $::operatingsystem {
    ubuntu, debian : {
      $client_package = 'openssh-client'
      $service_name   = 'ssh'
    }
    centos, redhat : {
      $client_package = 'openssh'
      $service_name   = 'sshd'
    }
    default : {
      fail('OS not supported')
    }
  }

}
