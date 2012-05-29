require 'parameter'
class BracketConverter
  def initialize

  end

  def do bracket_set
    ps = Parameter.new
    listified = bracket_set.split '['
    listified.shift if listified[0][/world_gen/i]
    listified.map! { |x| x.strip[0...-1] } # Remove the useless ] at the end of the string
    settings = {}
    listified.each do |setting|
      k, v = setting.split(':')
      settings[k] = v
    end
    ps.title = settings['TITLE']
    ps
  end
end
