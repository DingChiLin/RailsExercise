require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "find article" do
    article = articles(:one)
    assert_equal article.title, "title one"
  end

  test "find article one has two comment" do
    article = articles(:one)
    assert_equal 2, article.comments.length
  end
end
