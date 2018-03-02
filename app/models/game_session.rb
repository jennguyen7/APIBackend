class GameSession < ApplicationRecord
	has_many :results
	belongs_to :profile
end
