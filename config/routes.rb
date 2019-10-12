Rails.application.routes.draw do
  # I want my api to be questions-answered.com/api/v1/resource
  # We want it to be clear that this is an api, and to not
  # expect HTML to be rendered here, and having a version
  # number is helpful because APIs are updated frequently.

  namespace :api do 
    namespace :v1 do 
      resources :users
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
