class Cart < ActiveRecord::Base
    belongs_to :furniture

    def self.get_furnitures
        all.collect do |x|
            x.furniture
        end
    end

    def self.total
        self.sum(:total_cost)
    end
end