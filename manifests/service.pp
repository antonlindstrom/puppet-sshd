class sshd::service($ensure='present') {

  $ensure_service = $ensure ? {
    'present' => 'running',
    'absent'  => 'stopped',
  }

  service { $sshd::params::service_name:
    ensure     => $ensure_service,
    name       => $sshd::params::service_name,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => Class['sshd::package'],
  }

}
