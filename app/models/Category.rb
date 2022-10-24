class Category < ActiveRecord::Base
    has_many :furnitures
end

# order has many items through cart 
    #boolean to check if item is in order
# user has many order

