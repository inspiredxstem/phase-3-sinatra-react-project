class Order < ActiveRecord::Base
    has_many :items, through: :carts
end