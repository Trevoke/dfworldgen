class ParametersValidator #< ActiveModel::Validator

  def title? string
    !(string.nil? || string.empty?) && (string.size <= 20)
  end

  def dim? string
    valid_sizes = %w[17 33 65 129 257]
    x, y = string.split(':')
    valid_sizes.include?(x) && valid_sizes.include?(y)
  end

  def seed? string
    !(string.nil? || string.empty?) && (string.size <= 20)
  end

  def embark_points? string
    return false if string.nil? || string.empty?
    x = string.to_i
    x.between? 0, 10_000
  end

  def end_year? string
    return false if string.nil? || string.empty?
    x = string.to_i
    x.between? 2, 10_000
  end

  def total_civ_population? string
    return false if string.nil? || string.empty?
    x = string.to_i
    x.between? -1, 100_000
  end

  def site_cap? string
    return false if string.nil? || string.empty?
    x = string.to_i
    x.between? -1, 100_000
  end

  def beast_end_year? string
    return false if string.nil? || string.empty?
    year, percentage = string.split(':').map { |x| x.to_i }
    return false if year < 2
    percentage.between? -1, 100
  end

  def cull_historical_figures? string
    return false if string.nil? || string.empty?
    %w[0 1].include? string
  end

  def reveal_all_history? string
    return false if string.nil? || string.empty?
    %w[0 1].include? string
  end

  def elevation? string
    min_max_variance string, 0, 400
  end

  def rainfall? string
    min_max_variance string, 0, 100
  end

  def temperature? string
    min_max_variance string, -1000, 1000
  end

  def drainage? string
    min_max_variance string, 0, 100
  end

  def volcanism? string
    min_max_variance string, 0, 100
  end

  def savagery? string
    min_max_variance string, 0, 100
  end

  def elevation_frequency? string
    true
  end

  def rain_frequency? string
    true
  end

  def drainage_frequency? string
    true
  end

  def temperature_frequency? string
    true
  end

  def savagery_frequency? string
    true
  end

  def volcanism_frequency? string
    true
  end

  def complete_ocean_edge_min? string
    x = string.to_i
    x.between? 0, 4
  end

  def min_volcanoes? string
    x = string.to_i
    x >= 0
  end

  def mineral_scarcity? string
    x = string.to_i
    x.between? 100, 100_000
  end

  def megabeast_cap? string
    greater_than_or_equal_to_zero string.to_i
  end

  def semimegabeast_cap? string
    greater_than_or_equal_to_zero string.to_i
  end

  def titan_number? string
    greater_than_or_equal_to_zero string.to_i
  end

  def titan_attack_trigger? string
    population, exp_wealth, created_wealth = string.split(':').map { |x| x.to_i}
    !(population < 0 || exp_wealth < 0 || created_wealth < 0)
  end

  def demon_number? string
    zero_to_one_thousand? string
  end

  def night_troll_number? string
    zero_to_one_thousand? string
  end

  def bogeyman_number? string
    zero_to_one_thousand? string
  end

  def vampire_number? string
    zero_to_one_thousand? string
  end

  def werebeast_number? string
    zero_to_one_thousand? string
  end

  def secret_number? string
    zero_to_one_thousand? string
  end

  def regional_interaction_number? string
    zero_to_one_thousand? string
  end

  def disturbance_interaction_number? string
    zero_to_one_thousand? string
  end

  def evil_cloud_number? string
    zero_to_one_thousand? string
  end

  def evil_rain_number? string
    zero_to_one_thousand? string
  end

  def good_sq_counts? string
    true
  end

  def evil_sq_counts? string
    true
  end

  private

  def min_max_variance string, min, max
    params = string.split(':').map { |x| x.to_i }
    return false if params.size != 4
    return false unless params[0].to_i.between? min, max
    return false unless params[1].to_i.between? params[0], max
    return false if outside_variance? params[2]
    return false if outside_variance? params[3]
    true
  end

  def outside_variance? value
    !value.to_i.between? 0, 3200
  end

  def greater_than_or_equal_to_zero number
    number >= 0
  end

  def zero_to_one_thousand? string
    string.to_i.between? 0, 1000
  end

end
