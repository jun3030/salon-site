class CreateRegularHolidays < ActiveRecord::Migration[6.0]
  def change
    create_table :regular_holidays do |t|
      t.string, :day
      t.boolean, :holiday_flag
      t.datetime, :business_start_at
      t.datetime, :business_end_at
      t.boolean, :is_rest
      t.datetime, :rest_start_time
      t.datetime :rest_end_time
      t.references :calendar_config, null: false, foreign_key: true

      t.timestamps
    end
  end
end
