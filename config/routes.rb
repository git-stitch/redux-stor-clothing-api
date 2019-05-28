Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 
      resources :products, only: [:index, :show]
      resources :wish_lists, only: [:index,:show, :destroy, :create, :update]
      resources :carts, only: [:index,:show, :update, :create, :destroy]
      resources :users, only: [:index,:show,:create,:update,:destroy]
    end
  end
end
