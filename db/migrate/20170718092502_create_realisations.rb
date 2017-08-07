class CreateRealisations < ActiveRecord::Migration[5.0]
  def change
    create_table :realisations do |t|
      t.references :course, foreign_key: true
      t.references :user, foreign_key: true
      t.string :title, default: ""
      t.string :link, default: ""
      t.string :thumbnail, default: ""

      t.timestamps
    end
  end
end
