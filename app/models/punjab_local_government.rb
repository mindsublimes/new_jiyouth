class PunjabLocalGovernment < ApplicationRecord
	belongs_to :district
	has_many :units
	has_many :members, as: :area
	enum area: [:metropolitan_corporation, :municipal_corporation, :tehsil_council, :municipal_committee, :town_committee]
	validates :title, uniqueness: { scope: :area }
end
