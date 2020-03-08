class Api::V1::RestroomsController < ApplicationController

  protect_from_forgery unless: -> { request.format.json? }

  def index
    render json: Restroom.all
  end

  def show
    restroom = Restroom.find(params[:id])
    render json: restroom
  end

  def create
  restroom = Restroom.new(restroom_params)
  restroom.user = current_user
    if restroom.save
      render json: { restroom: restroom }
    else
      render json: { error: album.errors.full_messages }, status: :unprocessable_entity
    end
  end

private
  def restroom_params
    params.permit(:business_name, :address, :sanitation, :restroom_image, :payment?, :paying_customer?, :employee_only?, :handicap_stall?)
  end
  
end
