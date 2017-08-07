class CreateBlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :blocks do |t|
      t.string :tag, default: ""
      t.string :title, default: ""
      t.text :description, default: ""
      t.string :picture, default: ""
      t.string :link, default: ""
      t.boolean :visible, default: false, null: false
      t.boolean :footer, default: false, null: false

      t.timestamps
    end
  end
end
