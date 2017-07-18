class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :adress, :string
    add_column :users, :phone, :string
    add_column :users, :birth, :date
    add_column :users, :contact, :text
    add_column :users, :stripe, :string
    add_column :users, :plan, :string
    add_column :users, :note, :text
    add_reference :users, :tutored_by, references: :users
    add_column :users, :tutor, :boolean, default: false, null: false
    add_column :users, :admin, :boolean, default: false, null: false
  end
end
