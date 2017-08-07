class CreateStagetypes < ActiveRecord::Migration[5.0]
  def change
    create_table :stagetypes do |t|
      t.string :title, default: ""
      t.string :picture, default: ""
      t.text :description, default: ""
      t.string :color, default: ""
      t.string :puce, default: ""
      t.boolean :visible, default: false, null: false

      t.timestamps
    end
  end
end
