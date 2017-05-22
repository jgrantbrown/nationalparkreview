Rails.application.routes.draw do




  root :to => 'application#home'


  resources :natparks, only: [:index, :show]
  resources :travellers, only: [:index, :new, :show]
  resources :reviews, only: [:index, :create, :destroy, :edit, :update]

  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  delete :sessions, to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
