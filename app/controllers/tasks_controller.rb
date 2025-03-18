class TasksController < ApplicationController
  def index
  end

  def new
    @task = Task.new
  end
 
  def show
     @task = Task.find(params[:id])
     
  end

  def edit
  end

  def destroy
  end
end
