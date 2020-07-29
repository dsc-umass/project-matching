require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
    
    test "should get profile" do
        get profile_path
        assert_response :success
    end
    
end