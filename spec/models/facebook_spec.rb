require 'rails_helper'
require 'database_cleaner'

describe Facebook do
	before(:each) do
		DatabaseCleaner.strategy = :deletion
		DatabaseCleaner.clean	
	end

	it "has a valid factory" do
		facebook = FactoryGirl.create(:facebook)
		expect(facebook).to be_valid

		facebooks = Facebook.all
		expect(facebooks.count).to eq(1)
	end

	it "is invalid without email" do
		email = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:facebook, email: email)}. to raise_error(error)

		facebooks = Facebook.all
		expect(facebooks.count).to eq(0)
	end

	it "is invalid without password" do
		password = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:facebook, password: password)}. to raise_error(error)

		facebooks = Facebook.all
		expect(facebooks.count).to eq(0)
	end

	it "is invalid without person_id" do
		person_id = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:facebook, person_id: person_id)}. to raise_error(error)

		facebooks = Facebook.all
		expect(facebooks.count).to eq(0)
	end
end

