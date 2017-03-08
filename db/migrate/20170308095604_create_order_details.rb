class CreateOrderDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :order_details do |t|
      t.string :menu_item_name
      t.float :menu_item_price
      t.integer :quantity
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
