require 'test_helper'

class BookmarkedArticlesControllerTest < ActionController::TestCase
  setup do
    @bookmarked_article = bookmarked_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookmarked_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookmarked_article" do
    assert_difference('BookmarkedArticle.count') do
      post :create, bookmarked_article: { thought: @bookmarked_article.thought }
    end

    assert_redirected_to bookmarked_article_path(assigns(:bookmarked_article))
  end

  test "should show bookmarked_article" do
    get :show, id: @bookmarked_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookmarked_article
    assert_response :success
  end

  test "should update bookmarked_article" do
    put :update, id: @bookmarked_article, bookmarked_article: { thought: @bookmarked_article.thought }
    assert_redirected_to bookmarked_article_path(assigns(:bookmarked_article))
  end

  test "should destroy bookmarked_article" do
    assert_difference('BookmarkedArticle.count', -1) do
      delete :destroy, id: @bookmarked_article
    end

    assert_redirected_to bookmarked_articles_path
  end
end
