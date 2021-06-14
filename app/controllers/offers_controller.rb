class OffersController < ApplicationController
  before_action :generate_offers, only: :index
  def index
    @destination = Destination.find(params[:destination_id])
    @offers = @destination.offers

    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window: render_to_string(partial: 'info_window', locals: { offer: offer }),
        image_url: helpers.asset_url('logo.ico')
      }
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end

  private

  def generate_offers
    @destination = Destination.find(params[:destination_id])
    3.times do
      Offer.create(total_price: (@destination.flight.price + @destination.accommodation.price), destination: @destination, date: @destination.flight.start_date, address: @destination.accommodation.address)
    end
  end
end
