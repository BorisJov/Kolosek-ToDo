class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def create
    @task= Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def complete
    @task = Task.find(params.require(:id))
    @task.done!
    @tasks = Task.all
  end

  private
    def task_params
      params.require(:task).permit(:text, :done)
    end
end
