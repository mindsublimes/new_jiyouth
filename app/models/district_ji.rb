class DistrictJi < ApplicationRecord
	belongs_to :province_ji
	has_many :assembly_jis
end
