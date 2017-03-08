class User < ApplicationRecord
  has_many :orders
  has_many :order_history
  belongs_to :company
end
