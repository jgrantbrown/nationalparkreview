Rails.application.routes.draw do


  root :to => 'application#home'


  resources :natparks, only: [:index, :show]
  resources :travellers, only: [:index, :new, :show]
  resources :reviews, only: [:index, :new, :show, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
