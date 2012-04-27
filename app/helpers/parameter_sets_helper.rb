module ParameterSetsHelper

  def disable_vote? pset
    return true unless user_signed_in?
    current_user.voted_on? pset
  end
end
