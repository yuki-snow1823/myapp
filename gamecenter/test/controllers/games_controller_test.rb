require 'test_helper'

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get answer" do
    get games_answer_url
    assert_response :success
  end

  test "should get push" do
    get games_push_url
    assert_response :success
  end

end
