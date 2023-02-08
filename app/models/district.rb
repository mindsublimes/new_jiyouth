class District < ApplicationRecord
	belongs_to :province
	has_many :punjab_local_governments
	validates :title, uniqueness: true
end
