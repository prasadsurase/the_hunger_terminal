class AddOrderReferenceInMenuItem < ActiveRecord::Migration[5.0]
  def change
    add_reference :menu_items, :order, index: true
  end
end
