class RemoveStudentdobFromProfiles < ActiveRecord::Migration[5.1]
  def change
    remove_column :profiles, :student_dob, :date
  end
end
