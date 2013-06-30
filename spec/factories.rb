FactoryGirl.define do
	factory :user do
		name		"Example User"
		email		"email@example.com"
		password 	"foobar"
		password_confirmation 	"foobar"
	end
end