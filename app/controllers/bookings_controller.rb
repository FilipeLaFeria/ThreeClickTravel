class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @offer = Offer.find(params[:offer_id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @offer = Offer.find(params[:offer_id])
    @booking.offer = @offer
    @booking.user = current_user
    if @booking.status_flight && @booking.status_flight
      redirect_to destination_offer_booking_path(@offer.destination, @offer, @booking)
    elsif @booking.save && params[:param1] == "btn-booking"
      @booking.status_flight = true
      redirect_to destination_offer_path(@offer.destination, @offer)
    elsif @booking.save && params[:param1] == "btn-hotel"
      @booking.status_flight = true
      redirect_to destination_offer_path(@offer.destination, @offer)
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  # def booking_params
  #   params.require(:booking).permit(:status)
  # end

end
