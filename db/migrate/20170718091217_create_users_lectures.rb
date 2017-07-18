class CreateUsersLectures < ActiveRecord::Migration[5.0]
  def change
    create_table :users_lectures do |t|
      t.references :user, foreign_key: true
      t.references :lecture, foreign_key: true
      t.text :note

      t.timestamps null: false
    end
  end
end
