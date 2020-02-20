class Api::V1::TasksController < ApplicationController
  before_action :set_task, only: [:update, :destroy]

  # GET /tasks/user_id
  def index
    @tasks = Task.where(user_id: params[:user_id])
    render json: @tasks
  end

  # POST /tasks
  def create
    @task = Task.create!(create_params)
    json_response(@task, :created)
  end

  # PUT /tasks/:id
  def update
    @task.update!(update_params)
    json_response(@task, :no_content)
  end

  # DELETE /todos/:id
  def destroy
    @task.destroy!
    json_response({}, :ok)
  end

  private

  def create_params
    params.require(:task).permit(:description, :state, :user_id)
  end

  def update_params
    params.require(:task).permit(:description, :state)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
