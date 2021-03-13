class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.new
  end

  def create
    Task.create(text: params[:text])
    redirect_back(fallback_location: root_path)
  end
end
