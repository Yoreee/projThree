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
        @event = Event.where(user_id: session[:user_id])
        render :show
    end

    def edit
        @user = User.find(session[:user_id])
    end

    def update
    	update_info = User.find(params[:id])
    	update_info.update(user_params)

    	redirect_to user_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :favorite_band, :image)
    end

end