Rails.application.routes.draw do
  
  devise_for :users
  resources :products do
    resources :orders, only: [:new, :create]
  end
  
  get '/home' => 'site#home'
  get 'about' => 'site#about'
  get '/contact' => 'site#contact'
  get '/seller' => 'products#seller'
  get '/sales' => 'orders#sales'
  get '/purchases' => 'orders#purchases'


  root 'products#index'
end

