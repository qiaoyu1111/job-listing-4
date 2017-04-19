class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new

  end

  def show

  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end

  private

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
