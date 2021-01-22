class CreateCalendarConfigs < ActiveRecord::Migration[6.0]
  def change
    create_table :calendar_configs do |t|
      t.integer :capacity
      t.integer :cancelable_time
      t.integer :interval_time
      t.text :booking_message
      t.string :booking_link
      t.text :update_message
      t.text :cancel_message
      t.boolean :special_modal_flag
      t.references :calendar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
