class RemoveGsTimeFromGameSessions < ActiveRecord::Migration[5.1]
  def change
    remove_column :game_sessions, :game_session_time, :time
  end
end
