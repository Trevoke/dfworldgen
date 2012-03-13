require 'test_helper'

class ParameterSetsControllerTest < ActionController::TestCase
  #tests ParameterSetsController
  include Devise::TestHelpers

  setup do
    @parameter_set = parameter_sets(:one)
  end

  def sign_in_user
    @user = users(:one)
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parameter_sets)
  end

  test "should get new if user is logged in" do
    sign_in_user
    get :new
    assert_response :success
  end

  test "should create parameter set" do
    assert_difference('ParameterSet.count') do
      post :create, parameter_set: @parameter_set.attributes
    end

    assert_redirected_to parameter_set_path(assigns(:parameter_set))
  end

  test "should show parameter set" do
    get :show, id: @parameter_set
    assert_response :success
  end

  test "should be able to edit your own param sets" do
    sign_in_user
    get :edit, id: @parameter_set
    assert_response :success
  end

  test "should not be able to edit a param set that does not belong to you" do
    sign_in_user
    user2 = users(:two)
    not_mine = ParameterSet.create! :brackets => "ohnoes", :description => "fake",
                                    :name => "ohno", :user_id => user2.id
    get :edit, id: not_mine
    assert_redirected_to parameter_set_path(assigns(:parameter_set))
    assert_match "You're not allowed to edit this!", flash[:alert]

  end

  test "should update parameter set" do
    put :update, id: @parameter_set, parameter_set: @parameter_set.attributes
    assert_redirected_to parameter_set_path(assigns(:parameter_set))
  end

  test "should destroy parameter set" do
    assert_difference('ParameterSet.count', -1) do
      delete :destroy, id: @parameter_set
    end

    assert_redirected_to parameter_sets_path
  end
end
