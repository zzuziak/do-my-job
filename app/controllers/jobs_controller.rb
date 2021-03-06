class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  def index

    if params[:query].present? #all jobs displayed if searched with no input

      @jobs = policy_scope(Job).unbooked_or_bookable.text_search(params[:query])
      if params[:category].present?
        @jobs = @jobs.select{ |job| job.category == params[:category]  }
      end
      set_markers
    else
      @jobs = policy_scope(Job).unbooked_or_bookable
      if params[:category].present?
        @jobs = @jobs.select{ |job| job.category == params[:category]  }
      end
      set_markers
    end
  end

  def show
    authorize @job
    @booking = Booking.new
    authorize @booking
    @markers = [{
        lat: @job.latitude,
        lng: @job.longitude,
        infoWindow: { content: render_to_string(partial: "/shared/map_box", locals: { job: @job }) },
      }]
  end

  def new
    @job = Job.new
    authorize @job
  end

  def create
    @user = current_user
    @job = Job.new(job_params)
    @job.user = @user
    authorize @job
    if @job.valid?
      @job.save
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  def edit
    authorize @job
  end

  def update
    @job.update(job_params)
    authorize @job
    redirect_to job_path(@job)
  end

  def destroy
    @job.destroy
    authorize @job
    redirect_to root_path
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :category, :date, :price, :description, :guided, :photo, :location)
  end

  def set_markers
    @markers = @jobs.map do |job|
      {
        lat: job.latitude,
        lng: job.longitude,
        infoWindow: { content: render_to_string(partial: "/shared/map_box", locals: { job: job }) },
      }
    end
  end

end
