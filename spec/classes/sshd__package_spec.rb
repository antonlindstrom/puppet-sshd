require 'spec_helper'

describe 'sshd::package', :type => :class do
  let(:pre_condition) { "include sshd::params" }

  context 'with os debian' do
    let(:facts) { {:operatingsystem => 'debian' } }

    it { should contain_package('openssh-server').with_ensure('present') }
    it { should contain_package('openssh-client').with_ensure('present') }
  end

  context 'with os centos' do
    let(:facts) { {:operatingsystem => 'centos' } }

    it { should contain_package('openssh-server').with_ensure('present') }
    it { should contain_package('openssh').with_ensure('present') }
  end

end
