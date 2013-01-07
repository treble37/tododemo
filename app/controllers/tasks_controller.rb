class TasksController < ApplicationController
	before_filter :find_taskable
  
  def index
  	@tasks = @taskable.tasks
  end

  def new
  end

private
  def find_taskable
  	klass = [Todouser, Folder].detect { |x| params["#{x.name.underscore}_id"]}
  	@taskable = klass.find(params["#{klass.name.underscore}_id"])
  end
end
