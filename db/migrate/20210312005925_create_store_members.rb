class CreateStoreMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :store_members do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :email
      t.string :phone
      t.text :memo
      t.boolean :is_allow_notice
      t.string :line_user_id
      t.string :address
      t.references :calendar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
