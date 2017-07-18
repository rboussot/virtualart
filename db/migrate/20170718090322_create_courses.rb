class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.string :picture
      t.boolean :visible, default: false, null: false

      t.timestamps
    end
  end
end
