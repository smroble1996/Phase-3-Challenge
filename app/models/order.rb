class Order < ActiveRecord::Base
    belongs_to :customer
    belongs_to :product

    def total_price
        calculate(:sum, num_items * price.id)   
    
    end

    def print_invoice
        "Order for #{product.name} #{order.name} from #{customer.name} Status: #{status.id}"

    end

    def order_deliver
        delivered = true
    end
    
end