require 'test_helper'

class Api::V1::GraphsControllerTest < ActionController::TestCase
  
    test "should get sports" do
      get :show, { 'category' => 'sports'}
      assert_response :success
      assert_equal %q|{"sports":
                        [{"subcategory": "culture_and_sports_culture"}]
                      }|.gsub(/\s+/, ""), @response.body
    end

end
