class TaskinfosController < ApplicationController
   def show
      @task = params[:id]
      @taskInfo = TaskInfo.find_by(task_id: params[:id])
      puts @taskInfo.inspect
   end

   def destroy
     puts "all okey"
   end
end
