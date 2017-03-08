class Terminal < ApplicationRecord
  has_many :menu_items
  belongs_to :company
end
