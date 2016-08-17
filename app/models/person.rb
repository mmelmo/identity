class Person < ActiveRecord::Base
	has_many :facebooks, dependent: :destroy
	has_many :craigslists, dependent: :destroy
	has_many :emails, dependent: :destroy
	has_many :phone_numbers, dependent: :destroy

	validates :name, presence: true
	validates :dob, presence: true
	validates :gender, presence: true
	validates :location, presence: true
end
