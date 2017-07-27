class CreateStagetypes < ActiveRecord::Migration[5.0]
  def change
    create_table :stagetypes do |t|
      t.string :title
      t.string :picture
      t.text :description
      t.string :color
      t.string :puce
      t.boolean :visible, default: false, null: false

      t.timestamps
    end
  end
end
