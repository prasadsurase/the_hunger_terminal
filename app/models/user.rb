class User < ApplicationRecord
  has_many :orders
  belongs_to :company
end
