require 'rails_helper'

describe "pages" do

 describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end
  end


  describe "About page" do

    it "should have the content 'About'" do
      visit about_path
      expect(page).to have_content('About')
    end

    it "should have the title 'About'" do
      visit about_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
    end
  end

  describe "Register page" do

    it "should have the content 'Register'" do
      visit register_path
      expect(page).to have_content('Register')
    end

    it "should have the title 'Register'" do
      visit register_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Register")
    end
  end

end
