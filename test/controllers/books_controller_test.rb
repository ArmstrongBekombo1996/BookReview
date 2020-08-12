require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get books_index_url
    assert_response :success
  end
  
  test "should get new" do
    get new_books_index_url
    assert_response :success
  end

  test "should create books" do
    assert_difference('books.count') do
      post books_index_url, params: {books: { book_title: @books.book_title, description: @description, author: @author} }
    end

    assert_redirect_to_books_index_url(Books.last)
  
  end
end
