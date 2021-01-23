class CreateStaffShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :staff_shifts do |t|
      t.datetime :work_start_time
      t.datetime :work_end_time
      t.date :work_date
      t.boolean :is_holiday, default: false
      t.references :staff, null: false, foreign_key: true

      t.timestamps
    end
  end
end
