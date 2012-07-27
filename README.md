# SSH module

This is a module for managing sshd via Puppet.

## Usage

    include sshd

    sshd::config { 'PermitRootLogin':
      value => 'no',
    }

## Testing

    gem install bundler
    bundle install
    bundle exec rake

Run noop-tests:

    puppet apply --noop --verbose --modulepath=spec/fixtures/modules tests/init.pp

## Contribute

Send pull request and add tests. Make sure all tests pass (modify if you need) and make sure it's style-guide compliant.

## Thanks!

Many thanks to the following awesome people who has built most of this module:

* [kbarber](https://github.com/kbarber)
* [rtyler](https://github.com/rtyler)
