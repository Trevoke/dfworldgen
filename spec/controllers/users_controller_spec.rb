require 'spec_helper'

describe UsersController do

  context "Signed in user" do
    before :each do
      @user = FactoryGirl.create :user
      @request.env['devise.mapping'] = Devise.mappings[:user]
      sign_in @user
    end

    context 'Voting' do
      before :each do
        @parameter_set = FactoryGirl.create :parameter_set
      end

      it 'can do an AJAX vote_down on a pset' do
        xhr :put, :vote_down, id: @parameter_set
        @user.voted_as_when_voted_for(@parameter_set).should be_false
      end

      it 'can do an AJAX vote_up on a pset' do
        xhr :put, :vote_up, id: @parameter_set
        @user.voted_as_when_voted_for(@parameter_set).should be_true
        response.should_not redirect_to :index
      end
    end
  end
end
