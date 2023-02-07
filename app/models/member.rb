class Member < ApplicationRecord
	belongs_to :area, polymorphic: true
end
