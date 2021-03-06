# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Location.create(name: "MundiOro", address: "540 sw 56st", city: "New York", state: "NY", zip: "92929")
Location.create(name: "CatOro", address: "522 sw 55st", city: "New York", state: "NY", zip: "11111",headquarter_id: 1)
Location.create(name: "MewOro", address: "567 sw 56st", city: "New York", state: "NY", zip: "22222",headquarter_id: 1)

Inventory.create(amount_inhouse: 34,amount_sold: 45,price: 3.77, location_id: 1, product_id: 1)
Inventory.create(amount_inhouse: 7,amount_sold: 27,price: 4.87, location_id: 1,product_id:2)
Inventory.create(amount_inhouse: 95,amount_sold: 33,price: 2.44, location_id: 2, product_id: 1)
Inventory.create(amount_inhouse: 79,amount_sold: 9,price: 9.06, location_id: 2,product_id:2)

Product.create(product_name: "jade earrings")
Product.create(product_name: "pearl necklace")
