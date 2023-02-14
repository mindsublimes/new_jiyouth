class Responsibility < ApplicationRecord
	has_many :responsibility_sessions, dependent: :destroy
end
