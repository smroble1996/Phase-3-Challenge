class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.integer :num_items
      t.boolean :delivered
      t.integer :customer_id, foreign_key: true
      t.integer :product_id, foreign_key: true
    end
  end
end
