Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:new, :create, :show] do
    get :activate, on: :collection
  end

  resources :sessions, only: [:new, :create, :destroy]
end
