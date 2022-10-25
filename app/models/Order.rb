class Order < ActiveRecord::Base
    has_many :furnitures, through: :carts
end