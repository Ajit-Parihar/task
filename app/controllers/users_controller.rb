class UsersController < ApplicationController
    def index
        @tasks = Task.all
        @user = current_user
    end

    def show
        @user = User.find(params[:id])
        @tasks = @user.tasks.all
    end
    
    def showuser
        @task = Task.find(params[:id])
        @users = User.all
    end
    
    def assign
         @task = Task.find(params[:task_id])
         @user = User.find(params[:user_id])
         @date = Time.current + 7.days
         @taskInfo = TaskInfo.create(assignTo: @user.first_name, complete: "2", due_date: @date, task_id: @task.id)
         if @taskInfo.save
            Task.update(user_id: @user.id)
           
            redirect_to admin_index_path, notice: "task assign successfully"
         else
            redirect_to show_user_path, notice: "task not assign please try again letter"
         end
       
    end

    def taskdetails
         @taskInfo = TaskInfo.find_by(task_id: params[:id]) 
        
    end

    private
    def complete_data
        
    end
end