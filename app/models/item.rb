class Item < ApplicationRecord
  belongs_to :genre
  has_many :cart_item #追記
end
