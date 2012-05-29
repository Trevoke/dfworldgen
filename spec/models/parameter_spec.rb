require 'spec_helper'

describe Parameter do
  context 'Validation' do
    it 'needs a title <=20 characters' do
      ps = Parameter.new title: 'Valid title!'
      ps.should be_valid
      ps = Parameter.new title: ''
      ps.should_not be_valid
      ps = Parameter.new title: ('*' * 21)
      ps.should_not be_valid
    end
  end
end
