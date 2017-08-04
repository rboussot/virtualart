class AddAccessToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :access, :string
  end
end
