class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        user = User.create(user_params)
        redirect_to root_path
    end

    def show
        puts params
        @user = User.find(session[:user_id])
    end

    def edit
        @user = User.find(session[:user_id])
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :favorite_band)
    end

end