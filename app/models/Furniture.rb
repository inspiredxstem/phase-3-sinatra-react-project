class Furniture < ActiveRecord::Base
    belongs_to :category
    belongs_to :image
    belongs_to :cart

end