class RemoveScoreFromQuestions < ActiveRecord::Migration[5.1]
  def change
    remove_column :questions, :max_score, :integer
  end
end
