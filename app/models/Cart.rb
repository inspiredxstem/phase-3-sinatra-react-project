class Cart < ActiveRecord::Base
    belongs_to :furniture

    def self.total
        self.sum(:total_cost)
    end
end