class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
  end

  def help
  end

  def about
    
  end
  
  def welcome
    unless user_signed_in? 
      flash[:notice] = "Only for signed in users"
      redirect_to '/about'
    end 
  end
  
  def category
    
    catName = params[:title]
    @items = Item.where("category like ?", catName)
    
    
  end
  
  def paid 
    @order=Order.last
    
    @order.update_attribute(:status, "Paid in full by #{current_user.email}")
    session[:cart]= nil 
  end
  
  
end
