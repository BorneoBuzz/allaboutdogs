class Order < ActiveRecord::Base 
    belongs_to :product
    belongs_to :user
end
#4.3 example shows ApplicationRecord, however, product.rb showed ActiveRecord::Base instead.
#Modifying 4.3 example from ApplicationRecord to ActiveRecord::Base