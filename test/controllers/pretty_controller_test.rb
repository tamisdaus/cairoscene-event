require 'test_helper'

class PrettyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pretty_index_url
    assert_response :success
  end

  test "should get gallery" do
    get pretty_gallery_url
    assert_response :success
  end

end
