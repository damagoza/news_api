require 'test_helper'

class NewsExtractsControllerTest < ActionController::TestCase
  setup do
    @news_extract = news_extracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_extracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_extract" do
    assert_difference('NewsExtract.count') do
      post :create, news_extract: { MediumCategory_id: @news_extract.MediumCategory_id, content: @news_extract.content, title: @news_extract.title }
    end

    assert_redirected_to news_extract_path(assigns(:news_extract))
  end

  test "should show news_extract" do
    get :show, id: @news_extract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news_extract
    assert_response :success
  end

  test "should update news_extract" do
    patch :update, id: @news_extract, news_extract: { MediumCategory_id: @news_extract.MediumCategory_id, content: @news_extract.content, title: @news_extract.title }
    assert_redirected_to news_extract_path(assigns(:news_extract))
  end

  test "should destroy news_extract" do
    assert_difference('NewsExtract.count', -1) do
      delete :destroy, id: @news_extract
    end

    assert_redirected_to news_extracts_path
  end
end
