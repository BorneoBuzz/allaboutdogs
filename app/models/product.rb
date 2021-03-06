class Product < ActiveRecord::Base
    has_many :orders
    has_many :comments
    
    def self.search(search_term)
        if Rails.env.production?
            Product.where("name ILIKE ?", "%#{search_term}%")
        elsif Rails.env.development?
            Product.where("name LIKE ?", "%#{search_term}%")
        end
    end
    
    def highest_rating_comment 
        comments.rating_desc.first
    end
    
    def lowest_rating_comment 
        comments.rating_asc.first
    end
end




