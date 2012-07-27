# Test setting config
sshd::config { 'HostKey':
  value => ['/etc/hostkey1','/etc/hostkey2'],
}

sshd::config { 'Protocol':
  value => '3',
}

sshd::config { 'Subsystem':
  value => 'sftp foo',
}
