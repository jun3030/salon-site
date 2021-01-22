class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.string :calendar_name
      t.integer :start_date, default: 1
      t.integer :end_date
      t.integer :display_week_term
      t.integer :start_time
      t.integer :end_time
      t.boolean :is_released
      t.integer :display_time
      t.string :address
      t.string :phone
      t.string :public_uid
      t.integer :display_interval_time

      t.timestamps
    end
  end
end
