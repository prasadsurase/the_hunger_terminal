class RemoveUserAssociationFromOrderDetail < ActiveRecord::Migration[5.0]
  def change
    remove_column :order_details, :user_id
  end
end
