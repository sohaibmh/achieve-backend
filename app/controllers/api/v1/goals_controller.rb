class Api::V1::GoalsController < ApplicationController


  def index
      render json: Goal.all
  end

  def show
      render json: Goal.find(params[:id])
  end

  def create
      goal = Goal.create(goal_params)
      # goal.update(user: @current_user)
      if (goal.valid?)
          render json: goal
      else
          render json: { errors: goal.errors.full_messages }, status: :not_accepted
      end
  end

  def update
    goal = Goal.find params[:id]
    goal.update(goal_params)
  end

  def destroy
    goal = Goal.find params[:id]
    goal.destroy
  end

  private

  def goal_params
      params.require(:goal).permit(:id, :name, :user_id)
      # params.permit(:goal, :date)
  end

end

