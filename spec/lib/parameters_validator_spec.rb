filepath = File.dirname __FILE__
require File.join(filepath, '../../lib/parameters_validator.rb')

describe ParametersValidator do

  before :each do
    @pv = ParametersValidator.new
  end

  context 'TITLE' do
    it 'is not nil or empty' do
      @pv.title?('').should be_false
      @pv.title?(nil).should be_false
    end

    it 'is not more than twenty characters' do
      @pv.title?('this is more than twenty characters').should be_false
    end
  end

  context 'DIM' do
    it 'has valid sizes of 17,33,65,129,257' do
      dims = [17,33,65,129,257]
      valid_sizes = []
      invalid_sizes = []
      dims.each do |x|
        dims.each do |y|
          valid_sizes << "#{x}:#{y}"
          invalid_sizes << "#{x+1}:#{y}"
          invalid_sizes << "#{x}:#{y+1}"
        end
      end
      valid_sizes.each do |dim|
        @pv.dim?(dim).should be_true
      end
      invalid_sizes.each do |dim|
        @pv.dim?(dim).should be_false
      end      
    end
  end

  context 'SEEDS' do
    it 'has a seed' do
      @pv.seed?('').should be_false
      @pv.seed?(nil).should be_false
      @pv.seed?('jdksljkldas').should be_true
    end
    it 'is <= 20 chars' do
      @pv.seed?('This is more than twenty characters, I know').should be_false
      @pv.seed?('Totally Teatime Tot!').should be_true
    end

  end
end
