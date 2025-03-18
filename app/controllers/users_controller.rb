class UsersController < ApplicationController
    def index
        @tasks = Task.all
        puts "jdfljasdlj"
        @user = current_user
    end

    def show
        @user = User.find(params[:id])
        @tasks = @user.tasks.all
        puts "lajdlfjaslf"
        puts @tasks
    end
end