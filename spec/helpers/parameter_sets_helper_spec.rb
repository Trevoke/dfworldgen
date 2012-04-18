require 'spec_helper'

describe ParameterSetsHelper do

before :each do
   @user = create(:user)
   sign_in @user
 end

  it "current_user_can_like_a_set" do
    pset = build :parameter_set
    like_this(pset, @user)
    @user.voted_on?(pset).should be_true
    @user.voted_for?(pset).should be_true
  end

  it "current_user_can_dislike_a_set" do
    pset = build :parameter_set
    dislike_this(pset, @user)
    @user.voted_on?(pset).should be_true
    @user.voted_against?(pset).should be_true
  end

  it "disables voting if no user is logged in" do
    pset = build :parameter_set
    disable_vote?(pset, nil).should be_true
  end

  it "only enables vote if user has not already voted" do
    pset1 = build :parameter_set
    pset2 = build :parameter_set
    @user.vote_for pset1
    disable_vote?(pset1, @user).should be_true
    disable_vote?(pset2, @user).should be_false
  end

end
