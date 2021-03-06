require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => "Sample App")
    end

    it "should have the right title - Home" do
      visit "/static_pages/home"
      page.should have_selector('title', :text => "Ruby on Rails Sample App | Home")
    end
  end

  describe "Help page" do
    it "should have h1 as Help" do
      visit "/static_pages/help"
      page.should have_selector('h1', :text => "Help")
    end

    it "should have the right title - Help" do
      visit "/static_pages/help"
      page.should have_selector('title', :text => "Ruby on Rails Sample App | Help")
    end
  end

  describe "About us page" do
    it "should have the h1 as 'About Us'" do
      visit "/static_pages/about"
      page.should have_selector('h1', :text => "About Us")
    end

    it "should have the right title - About Us" do
      visit "/static_pages/about"
      page.should have_selector('title', :text => "Ruby on Rails Sample App | About Us")
    end
  end

end
