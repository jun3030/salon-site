class CreateStaffRegularHolidays < ActiveRecord::Migration[6.0]
  def change
    create_table :staff_regular_holidays do |t|
      t.string :day
      t.boolean, :is_holiday
      t.time, :work_start_at
      t.time, :work_end_at
      t.boolean, :is_rest
      t.datetime, :rest_start_time
      t.datetime :rest_end_time
      t.references :staff, null: false, foreign_key: true
      t.references :regular_holiday, null: false, foreign_key: true

      t.timestamps
    end
  end
end
