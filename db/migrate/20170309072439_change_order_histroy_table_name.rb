class ChangeOrderHistroyTableName < ActiveRecord::Migration[5.0]
  def change
    rename_table :order_histories, :order_details
  end
end
