class DestinationsfillJob < ApplicationJob
  queue_as :default

  def perform(budget, start_date)
    # puts "Deleting old destinations..."
    # Destination.destroy_all
    # puts "Creating destinations..."
    # @flights = Flight.where('price <= ?',budget * 0.4)
  end
end
