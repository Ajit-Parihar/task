class TaskinfosController < ApplicationController
   def show
      @taskInfo = TaskInfo.find_by(task_id: params[:id])
      
   end
end
