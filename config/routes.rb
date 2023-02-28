Rails.application.routes.draw do
  resources :concerts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # root_path
  root "pages#index"
  
  # results_path
  get "results", to: "pages#results"
end

