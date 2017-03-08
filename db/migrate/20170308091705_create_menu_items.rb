class CreateMenuItems < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.boolean :veg
      t.float :price
      t.references :terminal, foreign_key: true

      t.timestamps
    end
  end
end
