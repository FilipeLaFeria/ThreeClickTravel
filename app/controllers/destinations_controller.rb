class DestinationsController < ApplicationController
  def index
    @destinations = Destination.All.first(3)
  end
end
