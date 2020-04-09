Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  get "/home" => "pages#home"
  get "/about" => "pages#about"
  get "/lexicon" => "pages#lexicon"

  resources :cases, only: [:show]

  resources :victims, except: [:show]

end
