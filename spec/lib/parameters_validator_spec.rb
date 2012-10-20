require 'rspec'
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

  context 'EMBARK POINTS' do
    it 'has a value' do
      @pv.embark_points?('').should be_false
      @pv.embark_points?(nil).should be_false
      @pv.embark_points?('2000').should be_true
    end

    it 'is between 0 and 10_000' do
      [-5, 0, 1, 7000, 6353, 10000, 12000].each do |x|
        @pv.embark_points?(x.to_s).should eq ((x >= 0 && x <= 10_000) ? true : false)
      end
    end
  end

  context 'END YEAR' do
    it 'has a value between 2 and 10_000' do
      @pv.end_year?('').should be_false
      @pv.end_year?(nil).should be_false
      @pv.end_year?('1').should be_false
      @pv.end_year?('15_000').should be_false
      @pv.end_year?('150').should be_true
    end
  end

  context 'POPULATION CAP' do
    it 'has a value between -1 and 100_000' do
      @pv.total_civ_population?('').should be_false
      @pv.total_civ_population?(nil).should be_false
      @pv.total_civ_population?('-2').should be_false
      @pv.total_civ_population?('150_000').should be_false
      @pv.total_civ_population?('150').should be_true
      @pv.total_civ_population?('-1').should be_true
    end
  end

  context 'SITE CAP' do
    it 'has a value between -1 and 100_000' do
      @pv.site_cap?('').should be_false
      @pv.site_cap?(nil).should be_false
      @pv.site_cap?('-2').should be_false
      @pv.site_cap?('150_000').should be_false
      @pv.site_cap?('150').should be_true
      @pv.site_cap?('-1').should be_true
    end
  end

  context 'BEAST END YEAR' do
    it 'has a value between -1 and 100' do
      @pv.beast_end_year?('').should be_false
      @pv.beast_end_year?(nil).should be_false
      @pv.beast_end_year?('200:-2').should be_false
      @pv.beast_end_year?('200:110').should be_false
      @pv.beast_end_year?('200:-1').should be_true
      @pv.beast_end_year?('200:80').should be_true
    end

    it 'has an end year of at least 2' do
      @pv.beast_end_year?('1:80').should be_false
      @pv.beast_end_year?('2:80').should be_true
      @pv.beast_end_year?('3000:80').should be_true
    end
  end

  context 'CULL HISTORICAL FIGURES' do
    it 'is 0 or 1' do
      @pv.cull_historical_figures?('').should be_false
      @pv.cull_historical_figures?('2').should be_false
      @pv.cull_historical_figures?('0').should be_true
      @pv.cull_historical_figures?('1').should be_true
    end
  end

  context 'REVEAL ALL HISTORY' do
    it 'is 0 or 1' do
      @pv.reveal_all_history?('').should be_false
      @pv.reveal_all_history?('2').should be_false
      @pv.reveal_all_history?('0').should be_true
      @pv.reveal_all_history?('1').should be_true
    end
  end

  context 'TERRAIN PARAMETERS' do
    context 'elevation' do
      it 'is a terrain parameter' do
        is_a_proper_terrain_parameter_with_min_and_max 'elevation', 0, 400
      end
    end

    context 'rainfall' do
      it 'is a terrain parameter' do
        is_a_proper_terrain_parameter_with_min_and_max 'rainfall', 0, 100
      end
    end

    context 'temperature' do
      it 'is a terrain parameter' do
        is_a_proper_terrain_parameter_with_min_and_max "temperature", -1000, 1000
      end
    end

    context 'drainage' do
      it 'is a terrain parameter' do
        is_a_proper_terrain_parameter_with_min_and_max "drainage", 0, 100
      end
    end

    context 'volcanism' do
      it 'is a terrain parameter' do
        is_a_proper_terrain_parameter_with_min_and_max "volcanism", 0, 100
      end
    end

    context 'savagery' do
      it 'is a terrain parameter' do
        is_a_proper_terrain_parameter_with_min_and_max "savagery", 0, 100
      end
    end

  end

  context 'FREQUENCY' do
    #TODO understand http://dwarffortresswiki.org/index.php/DF2012:Advanced_world_generation#Terrain_Mesh_Sizes_and_Weights

    it 'returns true' do
      @pv.elevation_frequency?('').should be_true
      @pv.rain_frequency?('').should be_true
      @pv.drainage_frequency?('').should be_true
      @pv.temperature_frequency?('').should be_true
      @pv.savagery_frequency?('').should be_true
      @pv.volcanism_frequency?('').should be_true
    end

  end



  private

  def is_a_proper_terrain_parameter_with_min_and_max method, min, max
    %w[ 3 4:300 1:300:401].each do |x|
      @pv.public_send("#{method}?", x).should be_false
    end
    @pv.public_send("#{method}?", '1:1:401:401').should be_true

    %W[#{min-1}:0:401:401 0:#{max+1}:401:401 #{max+1}:#{max+1}:401:401 #{max}:#{max+1}:401:401].each do |params|
      @pv.public_send("#{method}?", params).should be_false
    end

    %W[#{min}:#{min+1}:401:401 #{min}:#{min}:1000:401 10:#{max}:401:401 #{max}:#{max}:401:401].each do |params|
      @pv.public_send("#{method}?", params).should be_true
    end

    @pv.public_send("#{method}?", '1:2:400:400').should be_true
    @pv.public_send("#{method}?", '2:1:400:400').should be_false

    %W[#{min}:#{max}:-1:3200 #{min}:#{max}:3200:-1 #{min}:#{max}:0:3201 #{min}:#{max}:3201:0].each do |params|
      @pv.public_send("#{method}?", params).should be_false
    end
    %W[#{min}:#{max}:0:3200 #{min}:#{max}:3200:0 #{min}:#{max}:0:3200 #{min}:#{max}:3200:0].each do |params|
      @pv.public_send("#{method}?", params).should be_true
    end
  end
  
end
