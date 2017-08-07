class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title, default: ""
      t.text :description, default: ""
      t.string :picture, default: ""
      t.string :color, default: ""
      t.string :puce, default: ""
      t.boolean :visible, default: false, null: false

      t.timestamps
    end
  end
end
