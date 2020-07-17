class MechanicsController < ApplicationController
  def index
    @mechanics = Mechanic.all
  end

  def show
    @mechanic = Mechanic.find(params[:id])
  end

  def update
    mechanic = Mechanic.find(params[:id])
    new_ride = Ride.find(params[:ride_id])
    mechanic.rides << new_ride
    redirect_to "/mechanics/#{mechanic.id}"
  end
end
