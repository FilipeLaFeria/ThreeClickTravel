class OffersController < ApplicationController
  before_action :generate_offers, only: :index
  def index
    @destination = Destination.find(params[:destination_id])
    #aqui codigo
    @offers = Offer.where(destination: @destination)

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

    @destination = Destination.find(params[:destination_id])
    budget = current_user.definition.budget
    interval = (budget - budget * 0.2)..(budget + budget * 0.2)
    @selected_destinations = Destination.where(city_name: @destination.accommodation.city_name).where(total_price: interval)
    @selected_destinations.each do |destination|
      Offer.create(total_price: destination.total_price, destination: destination, address: destination.accommodation.address)
    end
  end
end
