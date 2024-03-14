require "test_helper"

class ObservationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get observation_new_url
    assert_response :success
  end
end
