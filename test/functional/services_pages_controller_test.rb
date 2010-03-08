require 'test_helper'

class ServicesPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:services_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create services_page" do
    assert_difference('ServicesPage.count') do
      post :create, :services_page => { }
    end

    assert_redirected_to services_page_path(assigns(:services_page))
  end

  test "should show services_page" do
    get :show, :id => services_pages(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => services_pages(:one).to_param
    assert_response :success
  end

  test "should update services_page" do
    put :update, :id => services_pages(:one).to_param, :services_page => { }
    assert_redirected_to services_page_path(assigns(:services_page))
  end

  test "should destroy services_page" do
    assert_difference('ServicesPage.count', -1) do
      delete :destroy, :id => services_pages(:one).to_param
    end

    assert_redirected_to services_pages_path
  end
end
