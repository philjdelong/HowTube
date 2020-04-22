require 'rails_helper'

RSpec.describe "As a user" do
	describe "when i visit HowTube landing page", type: :feature do
		it "I see the logo and a search field" do

			visit "/"
			expect(page).to have_content("HowTube")
			save_and_open_page
			fill_in "Search", with: "Haircut"
			click_on "Search"

			expect(page).to have_css("#videos")
			expect(css("#videos").count).to eq(3)
		end
	end
end
