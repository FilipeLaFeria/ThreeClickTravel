class OffersController < ApplicationController
  before_action :generate_offers, only: :index
  def index
    @offers = Offer.all

    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window: render_to_string(partial: 'info_window', locals: { offer: offer }),
        # image_url: helpers.asset_url('logo.png')
      }
    end
  end

  private

  def generate_offers
    @destination = destination.find(params[:id])
    3.times do
      Offer.create(total_price: (@destination.flight.price + @destination.accommodation.price), destination: @destiantion.city_name)
    end
  end
end
