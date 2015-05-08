require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @title_body = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{@title_body}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@title_body}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@title_body}"
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end



end
