class OffersController < ApplicationController
  before_action :generate_offers, only: :index
  def index
    @offers = Offer.all
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window: render_to_string(partial: 'info_window', locals: { offer: offer }),
        image_url: helpers.asset_url('logo.ico')
      }
    end
  end

  private

  def generate_offers
    Offer.destroy_all
    @destination = Destination.find(params[:destination_id])
    @selected_destinations = Destination.where(city_name: @destination.accommodation.city_name)
    @selected_destinations.each do |destination|
      Offer.create(total_price: destination.total_price, destination: destination, address: destination.accommodation.address)
    end
  end
end
