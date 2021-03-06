class CreateTaskCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :task_courses do |t|
      t.string :title
      t.text, :description
      t.integer :course_time
      t.string, :charge
      t.boolean, :is_tax_included
      t.boolean, :is_more_than
      t.string :picture
      t.references :calendar, null: false, foreign_key: true

      t.timestamps
    end
  end
end
