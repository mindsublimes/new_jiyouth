class Unit < ApplicationRecord
	belongs_to :punjab_local_government
	has_many :members, as: :area
  enum unit_name: [:union_council, :ward]
end
