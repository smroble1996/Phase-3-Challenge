class Customer < ActiveRecord::Base
    has_many :orders
    has_many :products, through: :orders
    
    def cancel_order(order)
        
    end

    def total_spent

    end
end