Rails.application.routes.draw do
  #get '/', to: 'home#index'
  root 'home#index'
  resources :promotions, only: %i[index show]  
end
