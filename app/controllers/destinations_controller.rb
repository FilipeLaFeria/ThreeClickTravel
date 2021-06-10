class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all.first(3)
  end
end
