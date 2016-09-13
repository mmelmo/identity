require 'rails_helper'
require 'database_cleaner'

describe Craigslist do
	before(:each) do
		DatabaseCleaner.strategy = :deletion
		DatabaseCleaner.clean	
	end

	it "has a valid factory" do
		album = FactoryGirl.create(:craigslist)
		expect(craigslist).to be_valid

		craiglists = Craiglist.all
		expect(craiglists.count).to eq(1)
	end

	it "is invalid without email" do
		email = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:craigslist,email: email)}. to raise_error(error)

		craigslists = Craigslist.all
		expect(craigslists.count).to eq(0)
	end

	it "is invalid without password" do
		password = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:craiglist, password: password)}. to raise_error(error)

		craigslists = Craigslist.all
		expect(craigslists.count).to eq(0)
	end

	it "is invalid without phone_number" do
		phone_number = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:craiglist, phone_number: phone_number)}. to raise_error(error)

		craigslists = Craigslist.all
		expect(craigslists.count).to eq(0)
	end
end

