require 'rails_helper'

describe "pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
  end

  describe "Register page" do

    it "should have the content 'Register'" do
      visit '/pages/register'
      expect(page).to have_content('Register')
    end
  end

  describe "About Us page" do

    it "should have the content 'About'" do
      visit '/pages/about'
      expect(page).to have_content('About')
    end
  end
end
