Rails.application.routes.draw do
  get 'home/index'

  resources :users do
    resources :pets
  end

  root 'users#index'
end
