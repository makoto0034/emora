require 'test_helper'

class TimetablesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get timetables_index_url
    assert_response :success
  end

  test "should get create" do
    get timetables_create_url
    assert_response :success
  end

  test "should get new" do
    get timetables_new_url
    assert_response :success
  end

end
