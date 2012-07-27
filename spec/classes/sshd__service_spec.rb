require 'spec_helper'

describe 'sshd::service', :type => :class do
  let(:pre_condition) { "include sshd::params" }

  context 'with os debian' do
    let(:facts) { {:operatingsystem => 'debian' } }

    it { should contain_service('ssh').with_ensure('running') }
  end

  context 'with os centos' do
    let(:facts) { {:operatingsystem => 'centos' } }

    it { should contain_service('sshd').with_ensure('running') }
  end

end
