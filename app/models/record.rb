class Record < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :date, presence: true	
end
