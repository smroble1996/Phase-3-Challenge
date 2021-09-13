class Product < ActiveRecord::Base
    has_many :orders
    has_many :customers, through: :orders
end

def create_order
 "#{customer.id} #{num_items}"
end

def print_all_invoices

end

def number_ordered

end

def volume

end