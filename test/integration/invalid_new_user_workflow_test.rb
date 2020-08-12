require 'test_helper'

class InvalidNewUserWorkflowTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  fixtures :all

  test 'try to create a new user without a login' do
    @user = user(:one)
    get 'users/sign_in'
    assert_response :success

    post users_url, params:{user: {email: @user.email}}
    assert_equal '/user', path
    assert_select 'li', "email can't be blank"
    assert_select 'li', "email must be in an email format '@'"
  end
end
