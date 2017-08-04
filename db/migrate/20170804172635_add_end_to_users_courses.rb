class AddEndToUsersCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :users_courses, :end, :date
  end
end
