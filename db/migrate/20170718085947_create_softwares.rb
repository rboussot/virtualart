class CreateSoftwares < ActiveRecord::Migration[5.0]
  def change
    create_table :softwares do |t|
      t.string :title
      t.string :logo
      t.text :description

      t.timestamps
    end
  end
end
