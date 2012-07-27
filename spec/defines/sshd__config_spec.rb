require 'spec_helper'

describe 'sshd::config', :type => :define do
  let(:title) { 'foo' }
  let(:params) { {:value => 'bar'} }

  it { should contain_sshd_config('foo').with_value('bar') }

end
