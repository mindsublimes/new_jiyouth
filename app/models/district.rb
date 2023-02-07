class District < ApplicationRecord
	belongs_to :province
	has_many :punjab_local_governments
end
