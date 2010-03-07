require 'test_helper'

class ContactPagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_page" do
    assert_difference('ContactPage.count') do
      post :create, :contact_page => { }
    end

    assert_redirected_to contact_page_path(assigns(:contact_page))
  end

  test "should show contact_page" do
    get :show, :id => contact_pages(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => contact_pages(:one).to_param
    assert_response :success
  end

  test "should update contact_page" do
    put :update, :id => contact_pages(:one).to_param, :contact_page => { }
    assert_redirected_to contact_page_path(assigns(:contact_page))
  end

  test "should destroy contact_page" do
    assert_difference('ContactPage.count', -1) do
      delete :destroy, :id => contact_pages(:one).to_param
    end

    assert_redirected_to contact_pages_path
  end
end
