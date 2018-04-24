Rails.application.routes.draw do
  get 'users/show'
  resources :users

    
  get 'orderitems/index'

  get 'orderitems/show'

  get 'orderitems/new'

  get 'orderitems/edit'
  
  get 'contact-me', to: 'message#new', as: 'new_message'
  post 'contact-me', to: 'message#create', as: 'create_message'
  # For lines 10 and 11, code taken from: https://www.murdo.ch/blog/build-a-contact-form-with-ruby-on-rails-part-1 by Stephen Murdoch, GitHub: https://github.com/murdoch/rails-contact-form-demo

  resources :orders do 
    resources:orderitems
  end
  
  
  resources :categories
  
  
  devise_for :users do 
    resources:orders
  end
  

  
  get '/checkout', to: 'cart#createOrder'
  
  get '/paid', to: 'static_pages#paid'
  
  get '/clear', to: 'cart#clearCart'
  
  get 'cart/index'

  resources :items
  root 'static_pages#home'

  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'
  
    
  get '/welcome', to: 'static_pages#welcome', as: 'welcome'
  
  
  get '/login', to: 'user#login'
  get '/logout', to: 'user#logout'
  
  post '/search', to: 'items#search'
  
  get '/cart', to: 'cart#index'
  get '/cart/:id', to: 'cart#add'
  get '/cart/remove/:id', to: 'cart#remove'
  
  root :to => 'site#home'

  get 'category/:title', to: 'static_pages#category'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
