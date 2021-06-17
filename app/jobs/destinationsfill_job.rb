class DestinationsfillJob < ApplicationJob
  queue_as :default

  def perform(start_date, end_date)
    puts 'Deleting old destinations...'
    # Destination.destroy_all
    puts 'Creating destinations...'
    @flights = Flight.where('start_date = ?', start_date).where('end_date = ?', end_date)

    @flights.each do |flight|
      @accommodations = Accommodation.where('city_name = ?', flight.city_name).where('check_in = ?', start_date).where('check_out = ?', end_date)

      @accommodations.each do |accommodation|
        total_price = flight.price + accommodation.price

        Destination.where(flight: flight, accommodation: accommodation).first_or_create do |dest|
          dest.city_name = flight.city_name
          dest.country_name = flight.country_name
          dest.total_price = total_price
        end
      end
    end
  end
end
