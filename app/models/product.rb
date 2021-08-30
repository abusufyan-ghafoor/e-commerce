class Product < ApplicationRecord
  belongs_to :category
  has_many :comments
  has_many :reviews
  has_many :order_details
  has_many :orders, :through => :sections
end
