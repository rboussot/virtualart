class CreateStages < ActiveRecord::Migration[5.0]
  def change
    create_table :stages do |t|
      t.references :stagetype, foreign_key: true
      t.string :timeslot, default: ""
      t.boolean :visible, default: false, null: false

      t.timestamps
    end
  end
end
