class AssemblyJi < ApplicationRecord
	belongs_to :district_ji
	has_many :candidate_jis

  enum constituencies: [:na, :pp]
end
