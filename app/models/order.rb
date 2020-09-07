class Order < ApplicationRecord
  belongs_to :user
  belongs_to :garden

  monetize :amount_cents
end
