class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :string, default: ""
    add_column :users, :lastname, :string, default: ""
    add_column :users, :adress, :string, default: ""
    add_column :users, :phone, :string, default: ""
    add_column :users, :birth, :date
    add_column :users, :source, :text, default: ""
    add_column :users, :stripe, :string, default: ""
    add_column :users, :plan, :string, default: ""
    add_column :users, :note, :text, default: ""
    add_reference :users, :tutored_by, references: :users
    add_column :users, :tutor, :boolean, default: false, null: false
    add_column :users, :admin, :boolean, default: false, null: false
  end
end
