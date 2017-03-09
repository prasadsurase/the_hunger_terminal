class Terminal < ApplicationRecord
  has_many :menu_items
  has_many :ledgers
  has_many :order_details

  belongs_to :company
end
