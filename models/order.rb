class Order < ApplicationRecord
  belongs_to :user
  
  def order_params
      
      params.required(:order).permit(:order_date, :user_id, :status)
      
  end 
  
  has_many:orderitems
  belongs_to:user
  
end
