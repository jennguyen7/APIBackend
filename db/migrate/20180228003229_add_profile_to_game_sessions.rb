class AddProfileToGameSessions < ActiveRecord::Migration[5.1]
  def change
    add_reference :game_sessions, :profile, foreign_key: true
  end
end
