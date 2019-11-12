class Api::V1::CalendarsController < ApplicationController


  def index
      render json: Calendar.all
  end

  def show
      render json: Calendar.find(params[:id])
  end

  def create
      # byebug
      calendar = Calendar.create(calendar_params)
      # calendar.update(user: @current_user)
      if (calendar.valid?)
          render json: calendar
      else
          render json: { errors: calendar.errors.full_messages }, status: :not_accepted
      end
  end

  def update

    calendar = Calendar.find params[:id]
    calendar.update(calendar_params)

    # Calendar.update(calendar_params)

  end

  private

  def calendar_params
      params.require(:calendar).permit(:id, :date, :goal_id)
      # params.permit(:calendar, :date)
  end

end
