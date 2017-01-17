require 'test_helper'

class ClassAttendeesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get class_attendees_new_url
    assert_response :success
  end

end
