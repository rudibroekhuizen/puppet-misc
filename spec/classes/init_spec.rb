require 'spec_helper'
describe 'misc' do

  context 'with defaults for all parameters' do
    it { should contain_class('misc') }
  end
end
