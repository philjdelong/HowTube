require 'rails_helper'

RSpec.describe "As a user" do
	describe "when i visit HowTube landing page", type: :feature do
		it "I see the logo and a search field" do

			visit "/how_tube"
			expect(page).to have_content("HowTube")
			
			fill_in "Search", with: "Haircut"
			click_on "Search"

			expect(page).to have_css("#videos")
			expect(css("#videos").count).to eq(3)
		end
	end
end
