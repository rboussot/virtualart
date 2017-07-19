class CreateCoursesSoftwares < ActiveRecord::Migration[5.0]
  def change
    create_table :courses_softwares do |t|
      t.references :course, foreign_key: true
      t.references :software, foreign_key: true

      t.timestamps
    end
  end
end
