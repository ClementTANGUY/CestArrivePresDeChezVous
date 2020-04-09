require 'test_helper'

class VictimsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get victims_index_url
    assert_response :success
  end

end
