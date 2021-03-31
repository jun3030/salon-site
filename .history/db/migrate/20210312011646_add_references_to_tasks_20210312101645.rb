class AddReferencesToTasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :user, null: false, foreign_key: true
    add_reference :tasks, :task_course, null: false, foreign_key: true
    add_reference :tasks, :staff, null: false, foreign_key: true
  end
end
