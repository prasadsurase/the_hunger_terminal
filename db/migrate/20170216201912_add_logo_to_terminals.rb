class AddLogoToTerminals < ActiveRecord::Migration[5.0]
  def change
    add_column :terminals, :logo, :string
  end
end
