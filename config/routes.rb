Rails.application.routes.draw do
  resources :users do 
    resources :appearances, only: [:index, :create]
  end
  
  mount ActionCable.server => '/cable'

  resources :users do 
    resources :friendship
  end
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
