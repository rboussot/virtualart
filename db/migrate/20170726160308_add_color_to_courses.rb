class AddColorToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :color, :string
  end
end
