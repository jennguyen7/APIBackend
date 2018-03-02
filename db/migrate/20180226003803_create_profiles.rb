class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :account_holder_name
      t.string :account_holder_email
      t.text :password_digest
      t.string :student_name
      t.date :student_dob
      t.integer :student_grade

      t.timestamps
    end
  end
end
