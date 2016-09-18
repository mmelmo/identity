require 'rails_helper'
require 'database_cleaner'

describe Person do
	before(:each) do
		DatabaseCleaner.strategy = :deletion
		DatabaseCleaner.clean
	end

	it "has a valid factory" do
		person = FactoryGirl.create(:person)
		expect(person).to be_valid

		people = Person.all
		expect(people.count).to eq(1)
	end

	it "is invalid without name" do
		name = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:person, name: name)}. to raise_error(error)

		people = Person.all 
		expect(people.count).to eq(0)
	end

	it "is invalid without dob" do 
		dob = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:person, dob: dob)}. to raise_error(error)

		people = Person.all 
		expect(people.count).to eq(0)
	end

	it "is invalid without gender" do 
		gender = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:person, gender: gender)}. to raise_error(error)

		people = Person.all 
		expect(people.count).to eq(0)
	end

	it "is invalid without phone_number" do 
		phone_number = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:person, phone_number: phone_number)}. to raise_error(error)

		people = Person.all 
		expect(people.count).to eq(0)
	end

it "is invalid without location" do 
		location = nil
		error = ActiveRecord::RecordInvalid
		expect { FactoryGirl.create(:person, location: location)}. to raise_error(error)

		people = Person.all 
		expect(people.count).to eq(0)
	end
end

