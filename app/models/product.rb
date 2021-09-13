class Product < ActiveRecord::Base
    has_many :orders
    has_many :customers, through: :orders

    def create_order(customer, num_items)
        Order.create(status: status, num_items: num_items, customer_id: id, product_id: product.id)
    end
    
    def print_invoice
        "Order for #{product.name} #{order.name} from #{customer.name} Status: #{status.id}"
    end

    def number_ordered
       
    end
       
    def volume
       
end

end