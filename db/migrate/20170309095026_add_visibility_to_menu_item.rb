class AddVisibilityToMenuItem < ActiveRecord::Migration[5.0]
  def change
      add_column :menu_items, :visibility, :boolean, default: true
  end
end
