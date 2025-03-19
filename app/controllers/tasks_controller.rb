class TasksController < ApplicationController
  
  before_action :set_task, only: [:show, :start]


  def start
    @task.start_task
    redirect_to @task, notice: "Task started! Countdown has begun."
  end

  def index
  end
  def new
    @task = Task.new
  end

  def create
    @task = current_admin.tasks.new(task_params)
    if @task.save

      redirect_to admin_index_path, notice: "task create succssfully"
    else
      puts @task.errors.full_messages
       render :new, notice: "some error please try again"
    end
  end
  
  def show
       @tasks = current_admin.tasks
  end

  def assigntask
      @tasks = current_admin.tasks
  end

  def edit
  end

  def destroy
  end

  private

  def task_params
      params.require(:task).permit(:title)
  end


  

  def set_task
    @task = Task.find(params[:id])
  end


end
