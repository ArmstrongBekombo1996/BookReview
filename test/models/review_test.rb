require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save user without rating" do
    user = User.new
    assert_not user.save
  end
end
