class Customer < ActiveRecord::Base
  has_many :referrals, class_name: "Customer", foreign_key: "referring_customer_id", conditions: "referring_customer_id = id"
  belongs_to :referring_customer, class_name: "Customer", foreign_key: "referring_customer_id"
end
