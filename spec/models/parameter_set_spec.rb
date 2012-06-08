require 'spec_helper'

describe ParameterSet do

  it 'needs a name' do
    ps = ParameterSet.new name: '', description: 'a', brackets: '[a]'
    ps.should_not be_valid
  end
end
