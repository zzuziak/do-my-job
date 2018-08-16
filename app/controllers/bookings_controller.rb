class BookingsController < ApplicationController
before_action :set_user, only: [:new, :create, :index, :update, :requests]
before_action :set_job, only: [:new, :create]
before_action :set_booking, only: [ :update, :destroy ]


  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.job = @job
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def index
    @bookings = policy_scope(Booking).where(user_id: current_user.id)
    authorize @bookings
  end

  def requests
    @bookings = current_user.owned_jobs.map(&:bookings).flatten
  end

  # def edit
  #   authorize @booking
  # end

  def update
    @booking.update(booking_params)
    authorize @booking
    redirect_to requests_path
  end

  def destroy
    @booking.destroy
    authorize @booking
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:message, :status)
  end

  def set_user
    @user = current_user
  end

  def set_job
    @job = Job.find(params[:job_id])
  end

   def set_booking
    @booking = Booking.find(params[:id])
  end
end
