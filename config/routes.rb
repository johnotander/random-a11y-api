Rails.application.routes.draw do
  resources :votes, only: :create
  resources :combos, only: :index do
    get :top, on: :collection
    get :active, on: :collection
  end
  resources :stats, only: :index
end
