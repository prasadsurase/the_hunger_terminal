class CreateOrderHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :order_histories do |t|
      t.jsonb :item_details
      t.datetime :date
      t.float :total_cost
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
