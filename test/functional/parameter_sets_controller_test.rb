require 'test_helper'

class ParameterSetsControllerTest < ActionController::TestCase
  setup do
    @parameter_set = parameter_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parameter_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seed" do
    assert_difference('ParameterSet.count') do
      post :create, parameter_set: @parameter_set.attributes
    end

    assert_redirected_to parameter_set_path(assigns(:parameter_set))
  end

  test "should show seed" do
    get :show, id: @parameter_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parameter_set
    assert_response :success
  end

  test "should update seed" do
    put :update, id: @parameter_set, parameter_set: @parameter_set.attributes
    assert_redirected_to parameter_set_path(assigns(:parameter_set))
  end

  test "should destroy seed" do
    assert_difference('ParameterSet.count', -1) do
      delete :destroy, id: @parameter_set
    end

    assert_redirected_to parameter_sets_path
  end
end
