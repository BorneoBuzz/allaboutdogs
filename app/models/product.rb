class Product < ActiveRecord::Base
    has_many :orders
    
    def self.search(search_term)
        if Rails.env.production?
            Product.where("name ILIKE ?", "%#{search_term}%")
        elsif Rails.env.development?
            Product.where("name LIKE ?", "%#{search_term}%")
        end
    end
end




