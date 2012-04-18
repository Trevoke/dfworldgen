module ParameterSetsHelper

  def disable_vote?
    current_user.nil?
    #user.voted_on? pset
  end
end
