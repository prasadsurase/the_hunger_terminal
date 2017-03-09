desc "Task to create daily ledger entry"

namespace "terminal" do
  task :daily_ledger_entry => :enviornment do
    Terminal.find_each do |terminal|
     order_detail =  terminal.
     order_details.
     joins(:order).
     where("orders.date" => Date.today).
     select("sum(order_details.menu_item_price) as orders_amount, 
       sum(order_details.quantity) as orders_count").
     take

     terminal.ledgers.create(
       date: Date.today,
       orders_count: order_detail.orders_count,
       orders_amount: order_detail.orders_amount,
       orders_count: order_detail.orders_count,
       balance: terminal.balance
     )
   end 
 end
end