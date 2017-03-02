Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  resources :landing, only: [:index, :create]
  get '/auth/google/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
