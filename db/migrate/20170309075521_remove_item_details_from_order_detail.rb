class RemoveItemDetailsFromOrderDetail < ActiveRecord::Migration[5.0]
  def change
    remove_column :order_details, :item_details
  end
end
