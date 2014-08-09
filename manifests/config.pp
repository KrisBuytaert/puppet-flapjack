class flapjack::config {

  user { 'flapjack':
    ensure   => 'present',
    password => '!!',
    shell    => '/bin/bash',
  }

  file { '/var/run/flapjack':
    ensure  => directory,
    mode    => '0777',
    require => [ Package['flapjack'] ],
  }

  file { '/var/log/flapjack':
    ensure  => directory,
    mode    => '0777',
    require => [ Package['flapjack'] ],
  }

  file { '/etc/flapjack':
    ensure  => directory,
    require => [ Package['flapjack'] ],
  }

  #  file { '/etc/flapjack/flapjack-config.yaml':
  #  source  => 'puppet:///modules/flapjack/etc/flapjack/flapjack-config.yaml',
  #}

  #file { '/etc/init.d/flapjack-web-api':
  #  source  => 'puppet:///modules/flapjack/etc/init.d/flapjack-web-api',
  #}


}
