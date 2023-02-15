class ResponsibilitySession < ApplicationRecord
	belongs_to :team_member
	belongs_to :responsibility
end
