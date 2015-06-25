require 'rails_helper'

describe "login process" do

  before :each do
    @article = create(:article)
    @article2 = create(:article_with_comment)
    @my_article = create(:my_article_with_comment)
    @my_article_with_detail = create(:my_article_with_comment_detail)
  end

  describe 'factory girl can work' do
    it 'should get data' do
      expect(@article.title).to eq("Factory Data")
      expect(@article2.title).to eq("Factory Data")
      expect(@article2.comments.first.body).to eq("Great article!")
      expect(@my_article_with_detail.details.first.content).to eq("Detail!!")
    end
  end


  #describe 'home page' do
    #it 'welcomes the user' do
      #visit '/'
      #page.should have_content('Hello, Rails!')
    #end
  #end

  ##add :js=>true only when it need javascript
  #describe 'blog post page' do
    #it 'click my blog', :js => true do
      #visit '/'
      #click_on 'My Blog'  # this be an ajax button -- requires selenium
      #page.should have_content('Listing articles')
    #end
  #end

  #describe 'blog post page' do
    #it 'create new article fail', :js => true do
      #visit '/'
      #click_on 'My Blog'  # this be an Ajax button -- requires Selenium
      #click_on 'New article'
      #page.should have_content('New Article')

      #fill_in 'Title', :with => 'Test'
      #fill_in 'Text', :with => 'My Selenuim Test'
      #click_on 'Create Article'

      #page.should have_content('Title is too short (minimum is 5 characters)')
    #end
  #end

  #describe 'blog post page' do
    #it 'create new article success', :js => true do
      #visit '/'
      #click_on 'My Blog'  # this be an Ajax button -- requires Selenium
      #click_on 'New article'
      #page.should have_content('New Article')

      #fill_in 'Title', :with => 'Test 3'
      #fill_in 'Text', :with => 'My Selenuim Test'
      #click_on 'Create Article'

      #page.should have_content('Title: Test 3')
      #page.should have_content('Text: My Selenuim Test')
    #end

  #end

  #describe 'article with comment' do

     #it 'create new article success', :js => true do
      #visit '/'
      #click_on 'My Blog'  # this be an Ajax button -- requires Selenium
      #click_on 'New article'
      #page.should have_content('New Article')

      #fill_in 'Title', :with => 'Test 3'
      #fill_in 'Text', :with => 'My Selenuim Test'
      #click_on 'Create Article'

      #page.should have_content('Title: Test 3')
      #page.should have_content('Text: My Selenuim Test')
    #end

  #end

end


