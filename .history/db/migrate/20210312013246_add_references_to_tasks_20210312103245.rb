class AddReferencesToTasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :store_member, null: false, foreign_key: true
  end
end
