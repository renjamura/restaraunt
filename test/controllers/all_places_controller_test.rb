require 'test_helper'

class AllPlacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get all_places_index_url
    assert_response :success
  end

end
