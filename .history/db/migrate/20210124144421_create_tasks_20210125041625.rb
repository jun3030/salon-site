class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.text :request
      t.datetime :due_at
      t.datetime :start_time
      t.datetime :end_time
      t.string :google_event_id
      t.datetime :deleted_at
      t.text :memo
      t.boolean :is_sub
      t.boolean :is_appoint, default: true
      t.boolean :is_from_public, default: true
      t.string :state
      t.boolean :is_valid_task, default: true

      t.references :task_course, null: false, foreign_key: true
      t.references :calendar, null: false, foreign_key: true
      t.references :staff, null: false, foreign_key: true

      t.timestamps
    end
  end
end
