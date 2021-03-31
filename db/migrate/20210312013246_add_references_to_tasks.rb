class AddReferencesToTasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :store_member, foreign_key: true
  end
end
