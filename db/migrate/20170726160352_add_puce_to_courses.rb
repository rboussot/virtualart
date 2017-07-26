class AddPuceToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :puce, :string
  end
end
