class DestinationsController < ApplicationController
  def index
    # @destinations = Destination.all
    # @destinations = Destination.select(:country_name).uniq

    budget = current_user.definition.budget
    interval = (budget - budget * 0.2)..(budget + budget * 0.2)

    # @countries = Destination.pluck(:country_name).uniq

    @destinations = Destination.where(total_price: interval)
               .order(country_name: :desc)
               .distinct_on(:country_name)
               .limit(6)
               .sort_by(&:total_price)
               .reverse
  end
end
