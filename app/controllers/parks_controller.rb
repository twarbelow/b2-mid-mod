class ParksController < ApplicationController
  def show
    @park = Park.find(params[:id])
    @rides = @park.rides.order(:name)
    @average = @rides.average(:thrill_rating)
  end
end
