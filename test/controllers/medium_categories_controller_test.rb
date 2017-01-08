require 'test_helper'

class MediumCategoriesControllerTest < ActionController::TestCase
  setup do
    @medium_category = medium_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medium_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medium_category" do
    assert_difference('MediumCategory.count') do
      post :create, medium_category: { category_id: @medium_category.category_id, medium_id: @medium_category.medium_id, url: @medium_category.url }
    end

    assert_redirected_to medium_category_path(assigns(:medium_category))
  end

  test "should show medium_category" do
    get :show, id: @medium_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medium_category
    assert_response :success
  end

  test "should update medium_category" do
    patch :update, id: @medium_category, medium_category: { category_id: @medium_category.category_id, medium_id: @medium_category.medium_id, url: @medium_category.url }
    assert_redirected_to medium_category_path(assigns(:medium_category))
  end

  test "should destroy medium_category" do
    assert_difference('MediumCategory.count', -1) do
      delete :destroy, id: @medium_category
    end

    assert_redirected_to medium_categories_path
  end
end
