Rails.application.routes.draw do

  get 'cases/new'
  get 'cases/create'
  get 'cases/update'
  get 'cases/edit'
  get 'cases/destroy'
  get 'cases/show'
  get 'cases/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  get "/home" => "pages#home"
  get "/about" => "pages#about"
  get "/lexicon" => "pages#lexicon"

  resources :cases

end
