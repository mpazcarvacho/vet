Rails.application.routes.draw do
  root 'pet_histories#index'
  resources :pet_histories
  resources :pets
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
