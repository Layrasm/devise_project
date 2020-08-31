Rails.application.routes.draw do

  root "homes#index"
  devise_for :users

  resources :homes
  resources :todo
  resources :hobbies

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
