class TasksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]

  def index
    @tasks = Task.where(:is_hidden => false).order("created_at DESC")
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])

    if @task.is_hidden
      flash[:warning] = "This Task already archived"
      redirect_to root_path
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to tasks_path, notice: "Update Success!"
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, alert: "Task deleted."
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :wage_upper_bound, :wage_lower_bound, :contact_email, :is_hidden)
  end
end
