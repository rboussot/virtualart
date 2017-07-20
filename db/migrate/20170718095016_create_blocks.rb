class CreateBlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :blocks do |t|
      t.string :tag
      t.string :title
      t.text :description
      t.string :picture
      t.string :link
      t.boolean :visible, default: false, null: false
      t.boolean :footer, default: false, null: false

      t.timestamps
    end
  end
end
