class DestinationsfillJob < ApplicationJob
  queue_as :default

  def perform(price, start_date)
    puts "Deleting old destinations..."
    Destination.destroy_all
    puts "Creating destinations..."
    @flights = Flight.where('price <= ?', @definition.budget * 0.4)
    @destinations = @flights.destination
    Destination.create()
  end
end
