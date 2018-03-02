class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :task_question
      t.string :answer
      t.integer :max_score
      t.references :game_episode, foreign_key: true

      t.timestamps
    end
  end
end
