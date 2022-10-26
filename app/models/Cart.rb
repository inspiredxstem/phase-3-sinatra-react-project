class Cart < ActiveRecord::Base
    has_and_belongs_to_many :furnitures

    def self.get_furnitures
        all.collect do |x|
            x.furniture
        end
    end

    def self.total
        self.sum(:total_cost)
    end
end