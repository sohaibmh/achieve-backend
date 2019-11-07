class Api::V1::GoalsController < ApplicationController


  def index
    render json: Goal.all
end

def show
    render json: Goal.find(params[:id])
end

def create
    # byebug
    calendar = Goal.create(calendar_params)
    calendar.update(user: @current_user)
    if (calendar.valid?)
        render json: calendar
    else
        render json: { errors: calendar.errors.full_messages }, status: :not_accepted
    end
end

private

def calendar_params
    params.require(:calendar).permit(:date, :user_id)
    # params.permit(:calendar, :date)
end

end

