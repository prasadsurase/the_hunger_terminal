class AddIsPlacedInOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :is_placed, :boolean, default: :false
  end
end
