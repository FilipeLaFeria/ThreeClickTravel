class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @offer = Offer.find(params[:offer_id])
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.where(user: current_user, offer: @offer).first_or_create
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:status_flight, :status_accommodation)
  end
end
