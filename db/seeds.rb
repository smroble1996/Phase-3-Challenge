puts "Deleting old data..."
Product.destroy_all
Customer.destroy_all

puts "Creating Customers..."
customer1 = Customer.create(name: Faker::Name.name)
customer2 = Customer.create(name: Faker::Name.name)
customer3 = Customer.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating orders..."
order1 = Order.create(status: "On the way", num_items: 5, customer_id: customer1.id, product_id: product1.id)
order2 = Order.create(status: "Awaiting", num_items: 3, customer_id: customer2.id, product_id: product3.id)
order3 = Order.create(status: "Delayed", num_items: 2, customer_id: customer3.id, product_id: product5.id)
order4 = Order.create(status: "Late", num_items: 4, customer_id: customer3.id, product_id: product4.id)
order5 = Order.create(status: "Early", num_items: 2, customer_id: customer2.id, product_id: product2.id)

puts "Seeding done!"

puts
puts order1.customer.name
puts

puts order1.product.name
puts

puts product1.orders.map
puts

puts customer1.orders.map
puts

puts order1.print_invoice
puts

puts order1.total_price
puts

