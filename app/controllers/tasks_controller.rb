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
      redirect_taskable(@taskable,"Task created.")
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
      redirect_taskable(@taskable,"Task updated.")
    else
      render :edit
    end
  end

  def destroy
    @task = @taskable.tasks.find(params[:id])
    respond_to do |format|
      if @task.destroy
        format.html { redirect_to current_todouser, notice: "Task deleted." }
        format.js { render :nothing=>true }
        format.json { render json: current_todouser, status: :success, location: current_todouser}
      else
        format.html { redirect_to [@taskable, :tasks], notice: "Could not delete task for some reason." }
        format.js { format.js { render :nothing=>true } }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

private
  def find_taskable
  	klass_todouser = current_todouser
    klass_todouser_folder = klass_todouser.folders.find_by_id(params["folder_id"])
    @taskable = klass_todouser_folder || klass_todouser
  end
  def redirect_taskable(taskable_obj,msg_str)
    if taskable_obj.class==Todouser
      redirect_to [@taskable, :tasks], notice: msg_str
    else
      redirect_to [current_todouser, taskable_obj, :tasks], notice: msg_str
    end
  end
end
