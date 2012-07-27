class sshd {

  class { 'sshd::params': }
  class { 'sshd::package': }
  class { 'sshd::service': }

}
