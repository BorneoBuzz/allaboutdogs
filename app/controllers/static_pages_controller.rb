class StaticPagesController < ApplicationController
  def index
  end
  
  def about
  end 
  
  #def landing_page
   # @featured_product = Product.first
  #end - Original coding-commented out on 5/10/17. See below per exercise
  
  def landing_page
   @products = Product.limit(3)
  end 
end
