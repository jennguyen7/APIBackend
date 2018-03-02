class CreateGameSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :game_sessions do |t|
      t.date :game_session_date
      t.time :game_session_time

      t.timestamps
    end
  end
end
