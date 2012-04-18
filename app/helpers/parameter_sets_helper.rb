module ParameterSetsHelper

  def disable_vote? pset, user=current_user
    return true if user.nil?
    user.voted_on? pset
  end
end
