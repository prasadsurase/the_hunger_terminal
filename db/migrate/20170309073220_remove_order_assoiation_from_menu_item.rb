class RemoveOrderAssoiationFromMenuItem < ActiveRecord::Migration[5.0]
  def change
    remove_column :menu_items, :order_id
  end
end
