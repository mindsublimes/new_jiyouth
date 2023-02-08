class Unit < ApplicationRecord
	belongs_to :local_government_structure
	has_many :members, as: :area
  enum unit_name: [:union_council, :ward, :village_council, :neighbourhood_council]
end
