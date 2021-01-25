class CreateIregularHolidays < ActiveRecord::Migration[6.0]
  def change
    create_table :iregular_holidays do |t|
      t.date :date
      t.text :description
      t.references :calendar_config, null: false, foreign_key: true

      t.timestamps
    end
  end
end
