class CreateCalendars < ActiveRecord::Migration[6.0]
  def change
    create_table :calendars do |t|
      t.string :calendar_name
      t.integer :start_date, default: 1
      t.integer :end_date, default: 7
      t.integer :display_week_term, default: 3
      t.integer :start_time, default: 9
      t.integer :end_time, default: 18
      t.boolean :is_released, default: false
      t.integer :display_time, default: 5
      t.string :address, default: "東京都渋谷区"
      t.string :phone, default: "09012345678"
      t.string :public_uid
      t.integer :display_interval_time, default: 10

      t.timestamps
    end

    add_index  :calendars, :public_uid, unique: true
  end
end
