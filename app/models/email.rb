class Email < ActiveRecord::Base
	belongs_to :person, dependent: :destroy
	belongs_to :phone_number, dependent: :destroy

	validates :username, presence: true
	validates :password, presence: true
	validates :person_id, presence: true, numericality: true
	validates :phone_number_id, presence: true	
end
