require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "should hava the right title" do
      visit '/static_pages/home'
      page.should have_selector('title',:text=>"Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do
    it "Should hava text 'Help'" do
      visit "/static_pages/help"
      page.should have_content('Help')
    end

    it "should hava the right title" do
      visit '/static_pages/help'
      page.should have_selector('title',:text=>"Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About Page" do
    it "Should hava content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end

    it "should hava the right title" do
      visit '/static_pages/about'
      page.should have_selector('title',:text=>"Ruby on Rails Tutorial Sample App | About")
    end
  end

end