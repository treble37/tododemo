class TasksController < ApplicationController
	before_filter :find_taskable
  
  def index
  	@tasks = @taskable.tasks
  end

  def new
  	@task = @taskable.tasks.build
  end

  def create
  	@task = @taskable.tasks.build(params[:task])
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
  	#klass = [Todouser,Folder].detect { |x| params["#{x.name.underscore}_id"]}
  	klass_todouser = current_todouser
    klass_todouser_folder = klass_todouser.folders.find_by_id(params["folder_id"])
    @taskable = klass_todouser_folder || klass_todouser
  end
end
