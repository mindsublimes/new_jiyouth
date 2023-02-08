class LocalGovernmentStructure < ApplicationRecord
	belongs_to :district
	has_many :units
	has_many :members, as: :area
	enum area: [:metropolitan_corporation, :municipal_corporation, :tehsil_council, :municipal_committee, :town_committee, :city_local_government, :tehsil_local_government]
	validates :title, uniqueness: { scope: :area }
end
