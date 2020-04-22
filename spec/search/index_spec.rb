require 'rails_helper'

RSpec.describe "As a user" do
	describe "when i visit HowTube landing page", type: :feature do
		it "I can enter a topic into the search field" do

			visit "/HowTube"
			expect(page).to have_content("Welcome to HowTube")
			expect(page).to_not have_content("Haircut")
			
			fill_in "Search", with: "Haircut"
			click_on "HowTube"
			
			expect(current_path).to eq('/HowTube')
			expect(page).to have_content("Top Searches")
			expect(page).to have_content("Haircut, 1 total searches")

			fill_in "Search", with: "Haircut"
			click_on "HowTube"

			expect(page).to have_content("Haircut, 2 total searches")
		end
		
		it "i see 3 videos for each search" do
			# expect(page).to have_css("#videos")
			# expect(css("#videos").count).to eq(3)
		end
	end
end
