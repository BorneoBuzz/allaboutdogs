class StaticPagesController < ApplicationController
  def index
  end
  
  #def landing_page
   # @featured_product = Product.first
  #end - Original coding-commented out on 5/10/17. See below per exercise
  
  def landing_page
   @products = Product.limit(3)
  end
  
  #Purely for exercise 5.3
  ##def thank_you
   ##@name = params[:name]
   ##@email = params[:email]
   ##@message = params[:message]
   ##ActionMailer::Base.mail(from: @email,
     ## to: 'your-email@example.com',
      ##subject: "A new contact form message from #{@name}",
      ##body: @message).deliver_now
  ## end
  
end

