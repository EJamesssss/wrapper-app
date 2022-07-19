require "test_helper"

class SearchKeywordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get search_keywords_index_url
    assert_response :success
  end

  test "should get show" do
    get search_keywords_show_url
    assert_response :success
  end
end
