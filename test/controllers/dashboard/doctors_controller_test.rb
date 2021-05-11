require "test_helper"

class Dashboard::DoctorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_doctors_index_url
    assert_response :success
  end
end
