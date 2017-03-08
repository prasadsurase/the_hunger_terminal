class RemoveOrderDetails < ActiveRecord::Migration[5.0]
  def change
    drop_table :order_details
  end
end
