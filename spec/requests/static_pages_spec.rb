require 'rails_helper'
require 'capybara/rspec'

describe "Static Pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_page/home'
      page.should have_content('Sample App')
    end
    it "should have the right title" do
      visit '/static_page/home'
      page.should have_selector('title',
      :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end
  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_page/help'
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
      visit '/static_page/help'
      page.should have_selector('title',
      :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_page/about'
      page.should have_content('About Us')
    end
    it "should have the title 'About Us'" do
      visit '/static_page/about'
      page.should have_selector('title',
      :text => "Ruby on Rails Tutorial Sample App | About Us")
    end
  end
end
