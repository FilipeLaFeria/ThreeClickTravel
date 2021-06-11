class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
    @destinations= Destination.all.select("DISTINCT ON (flight_id) *")
  end
end
