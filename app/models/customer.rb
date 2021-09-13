class Customer < ActiveRecord::Base
    has_many :orders
    has_many :products, through: :orders
    
def create_order(customer, num_items)
    Order.create(status: status, num_items: num_items, customer_id: id, product_id: product.id)
end

end