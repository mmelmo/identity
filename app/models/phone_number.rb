class PhoneNumber < ActiveRecord::Base
	belongs_to :person
	belongs_to :email

	validates :person_id, presence: true
end
