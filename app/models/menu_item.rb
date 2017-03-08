class MenuItem < ApplicationRecord
  belongs_to :terminal
  belongs_to :order
end
