class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
      t.references :game_session, foreign_key: true
      t.decimal :try_1
      t.decimal :try_2
      t.decimal :try_3

      t.timestamps
    end
  end
end
