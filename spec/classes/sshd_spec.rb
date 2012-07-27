require 'spec_helper'

describe 'sshd', :type => :class do
  let(:facts) { {:operatingsystem => 'centos' } }

  it { should include_class('sshd::params') }
  it { should include_class('sshd::package') }
  it { should include_class('sshd::service') }

end
