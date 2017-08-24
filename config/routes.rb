Rails.application.routes.draw do

  get 'microposts/create'

  get 'microposts/destroy'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :microposts, only: [:create, :destroy]

  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  root 'static_pages#home'
  get "/signup" => 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
