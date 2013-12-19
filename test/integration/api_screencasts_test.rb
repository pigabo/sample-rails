require 'test_helper'

class ApiScreencastTest < ActionDispatch::IntegrationTest
  test "get /api/screencasts.json" do
    get "api/screencasts.json"
    assert_response :success
    assert body === Screencast.all.to_json
    screencasts = JSON.parse(response.body)
    assert screencasts.size == 3
    assert screencasts.any? { |s| s["title"] == screencasts(:fast_rails_commands).title }
  end
  
end
