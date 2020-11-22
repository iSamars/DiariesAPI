require 'test_helper'

class DiariesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    post '/api/diaries', params: {diary: {title: 'pz', expiration: Date.today + 7.days, kind: 'private_type'} }
    assert_response :success
    assert_equal(Diary.last.title, 'pz')
  end
end