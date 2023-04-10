Rails.application.routes.draw do
  devise_for :users
  resources :concerts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # root_path
  root "pages#index"
  
  # results_path
  get "results", to: "pages#results"
  #post "results", to: "pages#results"

  # save_path
  get "save", to: "pages#save"
  post "save", to: "pages#save"

  # list_path
  get "list", to: "pages#list"
  get "concertlist", to: "pages#list"


  #about path
  get "about", to: "pages#about"

end

