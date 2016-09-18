require 'rails_helper'
require 'database_cleaner'

describe Phone_number do
	before(:each) do
		DatabaseCleaner.strategy = :deletion
		DatabaseCleaner.clean	
	end

	it "has a valid factory" do
		phone_number = FactoryGirl.create(:phone_number)
		expect(phone_number).to be_valid

		phone_number = Phone_number.all
		expect(phone_number.count).to eq(1)
	end

	it "is invalid without person_id" do
		person_id = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:phone_number, person_id: person_id)}. to raise_error(error)

		phone_numbers = Phone_number.all
		expect(phone_numbers.count).to eq(0)
	end
end