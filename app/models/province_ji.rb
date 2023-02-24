class ProvinceJi < ApplicationRecord
	has_many :district_jis, dependent: :destroy
end
