class PunjabLocalGovernment < ApplicationRecord
	belongs_to :district
	has_many :units
	has_many :members, as: :area
end
