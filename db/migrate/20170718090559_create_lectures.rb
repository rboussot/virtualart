class CreateLectures < ActiveRecord::Migration[5.0]
  def change
    create_table :lectures do |t|
      t.references :software, foreign_key: true
      t.references :course, foreign_key: true
      t.string :title
      t.string :video
      t.text :description
      t.string :order
      t.boolean :visible, default: false, null: false

      t.timestamps
    end
  end
end
