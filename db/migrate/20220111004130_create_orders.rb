class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :product_name
      t.integer :product_count
      t.references :customer

      t.timestamps
    end
  end
end

#  def up
#     create_table :orders do |t|
#       t.string :product_name
#       t.integer :product_count
#       t.reference :customer
#
#       t.timestamps
#     end
#   end
#
#
#   def down
#     drop_table :orders
#   end
#
# end
