require 'rails_helper'

RSpec.describe "As a user" do
  describe "when I visit the root path and search sweet potatoes I should be on a foods page" do
    it "I should see a total number of items returned by the search" do
      # As a user,
      # When I visit "/"
      visit "/"
      # And I fill in the search form with "sweet potatoes"
      # fill_in :search, with: "sweet potatoes"
      find('.form-inline').set("sweet potatoes")
      # (Note: Use the existing search form)
      # And I click "Search"
      click_button "Search"
      # Then I should be on page "/foods"
      save_and_open_page
      expect(current_path).to eq("/foods")
      # Then I should see a total of the number of items returned by the search. (531 for sweet potatoes)
      expect(page).to have_content("531 Sweet Potatoes")
    end

    it "then I should see a list of 10 foods sorted by relevance" do
      # Then I should see a list of ten foods sorted by relevance.

    end
  end
end
