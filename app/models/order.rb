class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_detail #追記
end
