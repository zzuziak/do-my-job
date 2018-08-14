class BookingsController < ApplicationController
before_action :set_user, only: [:new, :create, :index]
before_action :set_job, only: [:new, :create]


  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = @user
    @booking.job = @job
    if @booking.save!
      redirect_to bookings_path
      else
      render :new
    end
  end

  def index
    @bookings = policy_scope(Booking).where(user_id: current_user.id)
    authorize @bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:message)
  end

  def set_user
    @user = current_user
  end

  def set_job
    @job = Job.find(params[:job_id])
  end
end
