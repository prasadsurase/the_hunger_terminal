class AddMenuItemDetailsInOrderDetail < ActiveRecord::Migration[5.0]
  def change
    add_column :order_details, :menu_item_name, :string
    add_column :order_details, :menu_item_price, :float
    add_column :order_details, :quantity, :integer
    add_column :order_details, :veg, :boolean
    add_column :order_details, :terminal_name, :string
    add_reference :order_details, :terminal, index: true
    add_reference :order_details, :order, index: true
  end
end
