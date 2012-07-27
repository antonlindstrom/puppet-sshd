class sshd::package($ensure='present') {

  package { 'openssh-server':
    ensure => $ensure,
  }

  package { $sshd::params::client_package:
    ensure => $ensure,
  }

}
