require "test_helper"

class NutritionInfosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nutrition_infos_index_url
    assert_response :success
  end

  test "should get show" do
    get nutrition_infos_show_url
    assert_response :success
  end
end
