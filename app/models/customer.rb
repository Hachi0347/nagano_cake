class Customer < ApplicationRecord
    has_many :address #追記
    has_many :cart_item #追記
end
