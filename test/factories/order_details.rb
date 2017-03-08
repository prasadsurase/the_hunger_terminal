FactoryGirl.define do
  factory :order_detail do
    menu_item_name "MyString"
    menu_item_price 1.5
    quantity 1
    order nil
  end
end
