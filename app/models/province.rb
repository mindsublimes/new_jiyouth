class Province < ApplicationRecord
	has_many :districts
	validates :title, uniqueness: true
end
