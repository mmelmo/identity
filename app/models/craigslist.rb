class Craigslist < ActiveRecord::Base
	belongs_to :person, dependent: :destroy

	validates :email, presence: true
	validates :password, presence: true
	validates :person_id, presence: true, numericality: true
	validates :phone_number, presence: true
end
