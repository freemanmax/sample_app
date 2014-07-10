require 'rails_helper'

describe "pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/pages/home'
      expect(page).to have_content('Sample App')
    end
  end

  describe "Contact page" do

    it "should have the content 'contact'" do
      visit '/pages/contact'
      expect(page).to have_content('Contact')
    end
  end

  describe "About Us page" do

    it "should have the content 'About Us'" do
      visit '/pages/about'
      expect(page).to have_content('About Us')
    end
  end
end
