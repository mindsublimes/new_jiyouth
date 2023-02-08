class District < ApplicationRecord
	belongs_to :province
	has_many :local_government_structures
	validates :title, uniqueness: true
end
