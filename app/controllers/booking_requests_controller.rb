class BookingRequestsController < ApplicationController

before_action :set_user, only [:index]

  def index
    @bookings = Booking.all(@user)
  end


  private

  def set_user
    @user = User.find(params[:user_id])
  end

end
