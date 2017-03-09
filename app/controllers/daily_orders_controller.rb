class DailyOrdersController < ApplicationController
  def index
    @daily_orders = OrderDetail.
      joins(:order, :terminal).
      group(:menu_item_name, "terminals.name, terminals.id").
      select("sum(quantity) as total_quantity, menu_item_name, terminals.name as terminal_name, terminals.id as t_id")
  end  
end
