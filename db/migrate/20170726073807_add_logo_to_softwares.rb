class AddLogoToSoftwares < ActiveRecord::Migration[5.0]
  def change
    add_column :softwares, :logo, :string
  end
end
