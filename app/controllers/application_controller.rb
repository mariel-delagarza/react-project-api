class ApplicationController < ActionController::API
   
#  helpers do
    #mock version of being logged in
    def current_user
      User.find(session[:user_id])
    end

    def logged_in?
      !!current_user
    end
 # end
end
