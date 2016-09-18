FactoryGirl.define do 
	factory :person do
		name Faker::Name.title
		dob Faker::Date.between(35.years.ago, 22.years.ago)
		gender { ["male", "female", "other"].sample
		phone_number Faker::PhoneNumber.phone_number
		#should we change name to address? Should we include all categories of an address?
		location Faker::Address.country
	end

	factory :craigslist do
		email Faker::Internet.email
		password Faker::Pokemon.name
		phone_number Faker::PhoneNumber.phone_number
	end

	factory :email do
		person_id FactoryGirl.create(:person).id
		username Faker::Name.title
		password Faker::Pokemon.name
		phone_number_id FactoryGirl.create(:phone_number).id
	end

	factory :facebook do
		email Faker::Internet.email
		password Faker::Pokemon.name
		person_id FactoryGirl.create(:person).id
	end

	factory :phone_number do
		person_id FactoryGirl.create(:person).id
	end
end