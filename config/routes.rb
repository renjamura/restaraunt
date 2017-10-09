Rails.application.routes.draw do
  
  
  devise_for :users
  resources :cart_items
  resources :carts
  get 'all_places/index'
  get 'all_places/:id' => 'all_places#show', as: 'all_place' 
  root 'all_places#index'
  get 'admin', to: 'admin#index', as: 'admin'
  scope :admin do
    resources :places, :dishes
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
