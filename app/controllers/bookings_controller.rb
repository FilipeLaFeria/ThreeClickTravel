class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
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
    else
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  # private

  # def booking_params
  #   params.require(:booking).permit(:status)
  # end


    #   @booking = Booking.new
    # @offer = Offer.find(params[:offer_id])
    # @booking.offer = @offer
    # @booking.user = current_user

    # if @booking.status_flight && @booking.status_accommodation
    #   redirect_to destination_offer_booking_path(@offer.destination, @offer, @booking)
    # elsif @booking.save && params[:param1] == 'btn-flight'
    #   @booking.status_flight = true
    #   redirect_to destination_offer_path(@offer.destination, @offer)
    # elsif @booking.save && params[:param1] == 'btn-hotel'
    #   @booking.status_accommodation = true
    #   redirect_to destination_offer_path(@offer.destination, @offer)
    # end
end
