class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :customer_age
      t.string  :customer_gender
      t.string  :product_name
      t.decimal :product_price, precision: 8, scale: 2
      
      t.timestamps
    end
  end
end
