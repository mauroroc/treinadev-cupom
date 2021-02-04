Rails.application.routes.draw do
  #get '/', to: 'home#index'
  root 'home#index'
  resources :promotions, only: %i[index show new create] do
    post 'generate_coupons', on: :member    
  end  
  resources :coupons, only: [] do
    post 'inactivate', on: :member
  end
end
