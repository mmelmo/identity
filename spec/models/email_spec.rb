require 'rails_helper'
require 'database_cleaner'

describe Email do 
	before(:each) do
		DatabaseCleaner.strategy = :deletion
		DatabaseCleaner.clean	
	end

	it "has a valid factory" do
		email = FactoryGirl.create(:email)
		expect(email).to be_valid

		emails = Email.all
		expect(emails.count).to eq(1)
	end

	it "is invalid without person_id" do
		person_id = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:email, person_id: person_id)}. to raise_error(error)

		emails = Email.all
		expect(emails.count).to eq(0)
	end

	it "is invalid without username" do
		username = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:email, username: username)}. to raise_error(error)

		emails = Email.all
		expect(emails.count).to eq(0)
	end

	it "is invalid without password" do
		password = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:email, password: password)}. to raise_error(error)

		emails = Email.all
		expect(emails.count).to eq(0)
	end

	it "is invalid without phone_number_id" do
		phone_number_id = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:email, phone_number_id: phone_number_id)}. to raise_error(error)

		emails = Email.all
		expect(emails.count).to eq(0)
	end
end