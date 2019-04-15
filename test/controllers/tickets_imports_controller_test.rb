require 'test_helper'

class TicketsImportsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tickets_imports_new_url
    assert_response :success
  end

  test "should get create" do
    get tickets_imports_create_url
    assert_response :success
  end

end
