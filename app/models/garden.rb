class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true

  monetize :price_cents
end
