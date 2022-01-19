class Order < ApplicationRecord
  belongs_to :customer

  # validate that the customer_id in the order actually points to an existing customer record
  validates_associated :customer
  validates_presence_of :product_name
  validates_presence_of :product_count
  validates_presence_of :customer_id

end
