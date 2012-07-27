define sshd::config($value) {

  sshd_config { $name:
    value   => $value,
    notify  => Class['sshd::service'],
  }

}
