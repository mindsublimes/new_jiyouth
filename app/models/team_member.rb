class TeamMember < ApplicationRecord
	has_many :responsibility_sessions, dependent: :destroy
	has_one_attached :image
end
