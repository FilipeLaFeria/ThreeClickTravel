class DestinationsController < ApplicationController
  def index
    # @destinations = Destination.all
    # @destinations = Destination.select(:country_name).uniq

    @countries = Destination.pluck(:country_name).uniq
    raise

  end
end
