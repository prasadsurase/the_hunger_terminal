class RemoveTotalCostAndDateFromOrderDetail < ActiveRecord::Migration[5.0]
  def change
    remove_column :order_details, :total_cost
    remove_column :order_details, :date
  end
end
