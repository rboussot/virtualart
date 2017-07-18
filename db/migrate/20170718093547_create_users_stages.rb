class CreateUsersStages < ActiveRecord::Migration[5.0]
  def change
    create_table :users_stages do |t|
      t.references :user, foreign_key: true
      t.references :stage, foreign_key: true
      t.boolean :confirmed, default: false, null: false

      t.timestamps
    end
  end
end
