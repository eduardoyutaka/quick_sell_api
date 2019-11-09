# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

purchases = Purchase.create([
  { customer_age: 20, customer_gender: 'Feminino', product_price: 1999.00, product_name: 'Positivo Motion - Notebook' },
  { customer_age: 21, customer_gender: 'Masculuno', product_price: 2299.90, product_name: 'VAIO C14 - Notebook' },
  { customer_age: 21, customer_gender: 'Feminino', product_price: 1499.00, product_name: 'Positivo Blackstone - Notebook' },
  { customer_age: 23, customer_gender: 'Masculino', product_price: 433.22, product_name: 'Positivo S511 - Smartphone' },
  { customer_age: 25, customer_gender: 'Masculino', product_price: 2399.00, product_name: 'Positivo S520 - Smartphone' }
])
