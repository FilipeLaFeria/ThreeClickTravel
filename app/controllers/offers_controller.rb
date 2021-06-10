class OffersController < ApplicationController
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
end
