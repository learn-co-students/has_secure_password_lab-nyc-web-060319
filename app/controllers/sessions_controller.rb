class SessionsController < ApplicationController
    def create
        # @user = User.new(user_params(params))
        user = User.find_by(name: params[:user][:name])
        if user && user.authenticate(params[:user][:password])
            # byebug
            session[:user_id] = user.id
            # redirect_to users_path
        else
            # byebug
            redirect_to login_path
        end
    end

    def new
    end
end
