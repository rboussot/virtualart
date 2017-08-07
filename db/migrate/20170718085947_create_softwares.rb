class CreateSoftwares < ActiveRecord::Migration[5.0]
  def change
    create_table :softwares do |t|
      t.string :title, default: ""
      t.string :logo, default: ""
      t.text :description, default: ""

      t.timestamps
    end
  end
end
