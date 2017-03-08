class AddDefaultToItemDetailsInOrderHistory < ActiveRecord::Migration[5.0]
  def change
    change_column_default :order_histories, :item_details, {}
  end
end
