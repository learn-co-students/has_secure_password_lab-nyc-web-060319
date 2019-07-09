class UsersController < ApplicationController
    def create
        # byebug
        if user_params[:password] != user_params[:password_confirmation]
            redirect_to users_new_path
        else
            @user = User.create(user_params)
            session[:user_id] = @user.id
        end
    end
    def new

    end

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
