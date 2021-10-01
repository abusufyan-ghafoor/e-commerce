class Order < ApplicationRecord
  belongs_to :user
  belongs_to :payment
  belongs_to :shipping
  has_many :order_details
  has_many :products, :through => :order_details
end
