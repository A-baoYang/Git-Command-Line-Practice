class UsersController < ApplicationController
    def index
        @users = User.all
        @user = User.new
    end

    def new
        @user = User.new
    end

    def create 
        user = params[:user]
        User.create(name: user[:name], email: user[:email], age: user[:age], bio: user[:bio]) 
        redirect_to '/users'
    end
end