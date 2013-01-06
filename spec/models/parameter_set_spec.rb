require 'spec_helper'

describe ParameterSet do

  it 'needs a name' do
    ps = ParameterSet.new name: '', description: 'a', brackets: '[a]'
    ps.should_not be_valid
  end

  it 'has many embark points' do
    ps = ParameterSet.new name: 'Test1', description: 'hgah', brackets: '[ahah]'
    e = ps.embarks.build description: 'desc', screenshot: 'x8yufG'
  end
end
