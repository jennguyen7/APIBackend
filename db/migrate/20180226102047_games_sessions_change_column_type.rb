class GamesSessionsChangeColumnType < ActiveRecord::Migration[5.1]
def change
    change_column(:game_sessions, :game_session_date, :datetime)
end
end
