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

private
  def find_taskable
  	klass = [Todouser, Folder].detect { |x| params["#{x.name.underscore}_id"]}
  	@taskable = klass.find(params["#{klass.name.underscore}_id"])
  end
end
