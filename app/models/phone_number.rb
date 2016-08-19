class PhoneNumber < ActiveRecord::Base
	belongs_to :person
	has_many :email

	validates :person_id, presence: true
end
