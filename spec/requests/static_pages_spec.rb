require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the h1 'sample app'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'sample app')
    end
    it "should have the title 'home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "RoR Tutorial Sample 1 App | Home")
    end
  end

  describe "Help page" do
  	it "should have the h1 'help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "RoR Tutorial Sample 1 App | Help")
    end
	end  		
  
  describe "About page" do
  	it "should have the h1 'about us'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text => 'about us')
  	end
    it "should have the title 'about us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "RoR Tutorial Sample 1 App | About")
    end

  end	
end
