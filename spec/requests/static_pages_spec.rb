require 'spec_helper'

describe "Static pages" do

	let(:base_title) {"Jodi's Badass Rails App"}

	describe "Home page" do

		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			expect(page).to have_content('Sample App')
		end

		it "should have right title" do
			visit '/static_pages/home'
			expect(page).to have_title("Home | #{base_title} ")
		end
	end

	describe "Help page" do

		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end

		it "should have right title" do
			visit '/static_pages/help'
			expect(page).to have_title("Help | #{base_title}")
		end
	end

	describe "About page" do

		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Us')
		end

		it "should have right title" do
			visit '/static_pages/about'
			expect(page).to have_title("About Us | #{base_title}")
		end
	end

	describe "Contact page" do

		it "should have the content 'Contact Us'" do
			visit '/static_pages/contact'
			expect(page).to have_content('Contact Us')
		end

		it "should have right title" do
			visit '/static_pages/contact'
			expect(page).to have_title("Contact Us | #{base_title}")
		end
	end

end