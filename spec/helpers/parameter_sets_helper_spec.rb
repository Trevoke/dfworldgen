require 'spec_helper'

describe ParameterSetsHelper do

  it 'disables voting if no user is logged in' do
    pset = build :parameter_set
    helper.disable_vote?(pset).should be_true
  end

  it 'only enables vote if user has not already voted' do
  @user = create(:user)
  sign_in @user
    pset1 = build :parameter_set
    pset2 = build :parameter_set
    @user.vote_for pset1
    helper.disable_vote?(pset1).should be_true
    helper.disable_vote?(pset2).should be_false
  end

  it 'gives a creative commons "no image" svg' do
    helper.no_image.should match /No_image_available.svg/
  end

  it 'gives "no image" if the parameter set has no image' do
    pset = build :parameter_set, image: nil
    helper.image_for(pset).should eq helper.no_image
    pset = build :parameter_set, image: ''
    helper.image_for(pset).should eq helper.no_image
  end

  it 'gives an image and a link if the pset has an image' do
    pset = build :parameter_set
    actual = helper.image_for(pset)
    actual.should match /<a href/
    actual.should match /<img/
  end

end
