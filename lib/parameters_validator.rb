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

  private

  def min_max_variance string, min, max
    params = string.split(':').map { |x| x.to_i }
    return false if params.size != 4
    return false unless params[0].between? min, max
    return false unless params[1].between? params[0], max
    return false if outside_variance? params[2]
    return false if outside_variance? params[3]
    true
  end

  def outside_variance? value
    !value.between? 0, 3200
  end

end
