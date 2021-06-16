class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @markers = @bookings.geocoded.map do |booking|
      {
        lat: booking.latitude,
        lng: booking.longitude,
        info_window: render_to_string(partial: 'info_window', locals: { booking: booking }),
        image_url: helpers.asset_url('logo.ico')
      }
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @offer = Offer.find(params[:offer_id])
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.where(user: current_user, offer: @offer).last
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.where(user: current_user, offer: @offer).last
    if @booking.nil?
      @new_booking = Booking.new(user: current_user, offer: @offer)
      @new_booking.save
      if params[:param1] == 'btn-flight'
        @new_booking.status_flight = true
        @new_booking.save
      elsif params[:param1] == 'btn-hotel'
        @new_booking.status_accommodation = true
        @new_booking.save
      end
      redirect_to new_destination_offer_booking_path(@offer.destination, @offer)
    elsif @booking.status_flight && @booking.status_accommodation
      redirect_to destination_offer_booking_path(@offer.destination, @offer, @booking)
    elsif params[:param1] == 'btn-flight'
      @booking.status_flight = true
      @booking.save
      redirect_to new_destination_offer_booking_path(@offer.destination, @offer)
    elsif params[:param1] == 'btn-hotel'
      @booking.status_accommodation = true
      @booking.save
      redirect_to new_destination_offer_booking_path(@offer.destination, @offer)
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
end
