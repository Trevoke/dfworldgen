require 'spec_helper'

describe ParameterSetsController do

  before :all do
    @parameter_set = FactoryGirl.create :parameter_set
  end

  context "Signed in user" do
    before :each do
      @user = FactoryGirl.create :user
      @request.env['devise.mapping'] = Devise.mappings[:user]
      sign_in @user
    end

    it 'should get new if user is logged in' do
      get :new
      response.should render_template 'new'
    end

    it 'should be able to edit your own param sets' do
      mine = FactoryGirl.create :parameter_set, {
          :brackets => "ohnoes", :description => "fake",
          :name => "ohno", :user_id => @user.id
      }
      get :edit, id: mine
      response.should render_template 'edit'
    end

    it 'should not be able to edit a param set that does not belong to you' do
      user2 = User.create email: 'test2@email.com'
      not_mine = FactoryGirl.create :parameter_set, {
          :brackets => "ohnoes", :description => "fake",
          :name => "ohno", :user_id => user2.id
      }
      get :edit, id: not_mine
      response.should redirect_to parameter_set_path(assigns(:parameter_set))
      flash[:alert].should match "You're not allowed to edit this!"
    end

    it 'should create parameter set' do
      expect {
        post :create, parameter_set: @parameter_set.attributes
      }.to change(ParameterSet, :count).by(1)

      response.should redirect_to parameter_set_path(assigns(:parameter_set))
    end

    it 'should update parameter set' do
      put :update, id: @parameter_set, parameter_set: @parameter_set.attributes
      response.should redirect_to parameter_set_path(assigns(:parameter_set))
    end

    it 'should destroy parameter set' do
      expect {
        delete :destroy, id: @parameter_set
      }.to change(ParameterSet, :count).by(-1)

      response.should redirect_to parameter_sets_path
    end

    it 'can do an AJAX vote_down on a pset' do
      xhr :put, :vote_down, id: @parameter_set
      @user.voted_against?(@parameter_set).should be_true
    end

    it 'can do an AJAX vote_up on a pset' do
      xhr :put, :vote_up, id: @parameter_set
      @user.voted_for?(@parameter_set).should be_true
      response.should_not redirect_to :index
    end

  end

  context "User not signed in" do
    it 'should get index' do
      get :index
      response.should be_success
      assigns(:parameter_sets).should_not be_nil
    end

    it 'should not be able to create a parameter set' do
      post :create, parameter_set: @parameter_set.attributes
      response.should redirect_to new_user_session_path
    end

    it 'should show parameter set' do
      get :show, id: @parameter_set
      assert_response :success
    end

    it 'should not be able to update a parameter set' do
      put :update, id: @parameter_set, parameter_set: @parameter_set.attributes
      response.should redirect_to new_user_session_path
    end

    it 'should not be allowed to destroy a parameter set' do
      delete :destroy, id: @parameter_set
      response.should redirect_to new_user_session_path
    end


  end

end