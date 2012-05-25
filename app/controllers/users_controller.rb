class UsersController < ApplicationController
  def vote_up
    pset = ParameterSet.find params[:id]
    current_user.likes pset
    render nothing: true
  end

  def vote_down
    pset = ParameterSet.find params[:id]
    current_user.dislikes pset
    render nothing: true
  end
end
