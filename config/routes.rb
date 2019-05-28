Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do 
    namespace :v1 do 
      resources :products, only: [:index, :show]
      resources :wish_lists, only: [:index,:show, :delete, :create, :update]
      resources :carts, only: [:index,:show, :update, :create, :delete]
      resources :users, only: [:index,:show]
    end
  end
end
