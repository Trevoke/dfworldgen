class ParametersValidator

  def title? string
    return false if string.nil? || string.empty?
    return false if string.size > 20
    true
  end

  def dim? string
    valid_sizes = [17,33,65,129,257]
    x, y = string.split(':').map { |x| x.to_i }
    valid_sizes.include?(x) && valid_sizes.include?(y)
  end

  def seed? string
    !(string.nil? || string.empty?) && (string.size <= 20)
  end
end
