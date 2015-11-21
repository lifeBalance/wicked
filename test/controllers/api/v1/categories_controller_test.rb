require 'test_helper'

class Api::V1::CategoriesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, { 'category' => 'science'}
    assert_response :success
    # assert_equal "{\"category\":
    #                 {\"title\":\"science\",
    #                  \"sub_categories\":1}
    #               }".gsub(/\s+/, ""), @response.body
    assert_equal %q|{"category":
                      {"title": "science",
                       "sub_categories" :1}
                    }|.gsub(/\s+/, ""), @response.body
  end

end
