class DestinationsfillJob < ApplicationJob
  queue_as :default

  def perform(budget, start_date)
    puts "Deleting old destinations..."
    Destination.destroy_all
    puts "Creating destinations..."
    @flights = Flight.where('price <= ?', budget * 0.4).where('start_date = ?', start_date)
    @flights.each do |flight|
      @accommodations = Accommodation.where('city_name = ?', flight.city_name).where('check_in = ?', flight.start_date)
      @accommodations.each do |accommodation|
        Destination.create(flight: flight, accommodation: accommodation, city_name: flight.city_name, country_name: flight.country_name)
      end
    end
  end
end
