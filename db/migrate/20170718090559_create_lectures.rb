class CreateLectures < ActiveRecord::Migration[5.0]
  def change
    create_table :lectures do |t|
      t.references :software, foreign_key: true
      t.references :course, foreign_key: true
      t.string :title, default: ""
      t.string :video, default: ""
      t.text :description, default: ""
      t.string :order, default: ""
      t.boolean :visible, default: true, null: false

      t.timestamps
    end
  end
end
