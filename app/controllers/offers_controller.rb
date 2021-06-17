class OffersController < ApplicationController
  before_action :generate_offers, only: :index

  def index
    @destination = Destination.find(params[:destination_id])
    @offers = Offer.where(destination: Destination.where(city_name: @destination.city_name))

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
    # Offer.destroy_all

    @destination = Destination.find(params[:destination_id])

    budget = current_user.definition.budget
    interval = (budget - budget * 0.2)..(budget + budget * 0.2)

    @selected_destinations = Destination.where(city_name: @destination.accommodation.city_name).where(total_price: interval)

    @selected_destinations.each do |destination|
      Offer.where(destination: destination).first_or_create do |offer|
        offer.total_price = destination.total_price
        offer.address = destination.accommodation.address
      end
    end
  end
end
