class TasksController < ApplicationController
	before_filter :find_taskable
  
  def index
  	@tasks = @taskable.tasks
  end

  def new
  	@task = @taskable.tasks.new
  end

  def create
  	@task = @taskable.tasks.new(params[:task])
  	if @task.save
  		redirect_to [@taskable, :tasks], notice: "Task created."
  	else
  		render :new
  	end
  end

  def edit
    @task = @taskable.tasks.find(params[:id])
  end

  def update
    @task = @taskable.tasks.find(params[:id])
    if @task.update_attributes(params[:task])
      redirect_to [@taskable, :tasks], notice: "Task updated."
    else
      render :edit
    end
  end

  def destroy
    @task = @taskable.tasks.find(params[:id])
    if @task.destroy
      redirect_to root_path, notice: "Task deleted."
    else
      redirect_to [@taskable, :tasks], notice: "Could not delete task for some reason."
    end
  end

private
  def find_taskable
  	klass = [Todouser, Folder].detect { |x| params["#{x.name.underscore}_id"]}
  	@taskable = klass.find(params["#{klass.name.underscore}_id"])
  end
end
