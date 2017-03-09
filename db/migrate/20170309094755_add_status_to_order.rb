class AddStatusToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :status, :string, default: 'pending'
    remove_column :orders, :is_placed
  end
end
