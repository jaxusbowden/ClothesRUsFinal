class UserController < ApplicationController
    
    def login
        session[:login] = 1
        flash[:notice] = "Admin Logged In"
        redirect_to :controller => :items
    end
    
    
    def logout
        # session[:cart] = nil
        session[:login] = nil
        flash[:notice] = "Admin Logged Out"
        redirect_to :controller => :items
    end
    
    
    
    
    
    
    
end
