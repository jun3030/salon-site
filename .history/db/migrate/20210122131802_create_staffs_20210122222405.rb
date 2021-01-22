class CreateStaffs < ActiveRecord::Migration[6.0]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :email
      t.string :description
      t.string :staff_part
      t.string :staff_image
      t.references :calendar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
