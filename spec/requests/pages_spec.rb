require 'rails_helper'

describe "pages" do

  describe "Home" do

    it "should have the content 'Sample App'" do
      visit '/pages/home'
      expect(page).to have_content('Sample App')
    end
  end
end
