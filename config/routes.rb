Rails.application.routes.draw do
  post "/api/v1/login", to: "api/v1/sessions#create"
  post "/api/v1/signup", to: "api/v1/users#create"
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"
  delete "/api/v1/logout", to: "api/v1/sessions#destroy"


  # I want my api to be questions-answered.com/api/v1/resource
  # We want it to be clear that this is an api, and to not
  # expect HTML to be rendered here, and having a version
  # number is helpful because APIs are updated frequently.

  namespace :api do 
    namespace :v1 do 
      resources :users
      resources :answers
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
