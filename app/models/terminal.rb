class Terminal < ApplicationRecord
  has_many :menu_items
  has_many :ledgers

  belongs_to :company
end
