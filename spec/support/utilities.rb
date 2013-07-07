include ApplicationHelper
require 'pp'

RSpec::Matchers.define :have_error_message do |message|
	match do |page|
		expect(page).to have_selector('div.alert.alert-error', text: message)
	end
end

RSpec::Matchers.define :have_success_message do |message|
	match do |page|
		expect(page).to have_selector('div.alert.alert-success', text: message)
	end
end

RSpec::Matchers.define :have_alert_box do |type|
	match do |page|
		expect(page).to have_selector("div.alert.alert-#{type}")
	end
end

def valid_signin(user)
	fill_in "Email", 	with: user.email
	fill_in "Password", with: user.password
	click_button "Sign in"
	cookies[:remember_token] = user.remember_token
end

def sign_in(user, options={})
	if options[:no_capybara]
		# Sign in when not using Capybara
		remember_token = User.new_remember_token
		cookies[:remember_token] = user.remember_token
		user.update_attribute(:remember_token, User.encrypt(remember_token))
	else
		visit signin_path
		fill_in "Email", 	with: user.email
		fill_in "Password", with: user.password
		click_button "Sign in"
	end
end