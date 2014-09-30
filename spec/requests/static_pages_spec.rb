require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home' #uses the Capybara function visit to simulate visiting the URL /static_pages/home in a browser
      expect(page).to have_content('Sample App') #uses the page variable (also provided by Capybara) to express the expectation that the resulting page should have the right content.
    end

    it "should contain the right title" do
    	visit '/static_pages/home'
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")

    end
  end

  describe "Help page" do
  	it "should have the content 'Help page'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help page')	  		
  	end

  	it "should contain the right title" do
  		visit '/static_pages/help'
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
  	end
  end

  describe "About Page" do
  	it "should have the content 'About us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About us')
  	end

  	it "should have the right title" do
  		visit '/static_pages/about'
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
  	end

  end
end
