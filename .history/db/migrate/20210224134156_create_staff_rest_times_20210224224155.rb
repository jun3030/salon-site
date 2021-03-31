class CreateStaffRestTimes < ActiveRecord::Migration[6.0]
  def change
    create_table :staff_rest_times do |t|
      t.datetime :rest_start_time
      t.datetime :rest_end_time
      t.boolean :is_default
      t.references :staff_shift, null: false, foreign_key: true

      t.timestamps
    end
  end
end
