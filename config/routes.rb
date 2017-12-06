Rails.application.routes.draw do

  root '/', :to => 'application#home'
  get 'about', :to => 'application#about'

  resources :natparks, only: [:index, :show]
  # resources :travellers, only: [:index, :new, :show] dont' need new and show yet?
  resources :travellers, only: [:index, ]
  resources :reviews, only: [:index, :create, :destroy, :edit, :update]


  resources :parktypes, only: [:index, :show]
  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  delete :sessions, to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :apicallnatparks, only: [:index]

end
