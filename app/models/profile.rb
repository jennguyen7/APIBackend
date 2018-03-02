class Profile < ApplicationRecord
	has_secure_password
	has_many :game_sessions
end
