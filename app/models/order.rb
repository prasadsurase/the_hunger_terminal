class Order < ApplicationRecord
  has_many :menu_items
  belongs_to :user
end
