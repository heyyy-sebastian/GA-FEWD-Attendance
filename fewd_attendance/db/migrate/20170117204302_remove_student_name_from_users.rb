class RemoveStudentNameFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :student_name, :string
  end
end
