Rails.application.routes.draw do


  root :to => 'application#home'


  resources :natparks, only: [:index, :show]
  resources :travellers, only: [:index, :new, :show]
  resources :reviews, only: [:index, :create, :destroy, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    post '/logout' => 'sessions#destroy'
end
