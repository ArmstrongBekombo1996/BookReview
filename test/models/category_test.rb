require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save user without selecting a category" do
    user = User.new
    assert_not user.save
  end
end
