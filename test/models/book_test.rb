require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save user without title" do
    user = User.new
    assert_not user.save
  end
end
