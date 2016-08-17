class Facebook < ActiveRecord::Base
	belongs_to :person

	validates :person_id, presence: true
	validates :email, presence: true
	validates :password, presence: true
end
