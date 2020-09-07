class AddPriceToGardens < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :sku, :string
    add_monetize :gardens, :price, currency: { present: false }
  end
end
