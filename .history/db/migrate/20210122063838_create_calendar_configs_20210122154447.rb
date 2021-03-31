class CreateCalendarConfigs < ActiveRecord::Migration[6.0]
  def change
    create_table :calendar_configs do |t|
      t.integer :capacity, default: 1
      t.integer :cancelable_time, default: 24
      t.integer :interval_time, default: 0
      t.text :booking_message
      t.string :booking_link
      t.text :update_message
      t.text :cancel_message
      t.boolean :special_modal_flag, default: false
      t.references :calendar, foreign_key: true

      t.timestamps
    end
  end
end
