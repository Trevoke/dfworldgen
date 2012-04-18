require 'spec_helper'

describe ParameterSetsHelper do

  it "disables voting if no user is logged in" do
    pset = build :parameter_set
    helper.disable_vote?.should be_true
  end

  #it "only enables vote if user has not already voted" do
  # @user = create(:user)
  # sign_in @user
  #  pset1 = build :parameter_set
  #  pset2 = build :parameter_set
  #  @user.vote_for pset1
  #  disable_vote?(pset1, @user).should be_true
  #  disable_vote?(pset2, @user).should be_false
  #end

end
