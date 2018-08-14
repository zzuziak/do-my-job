class JobsController < ApplicationController
  def new
    @job = Job.new
    authorize @job
  end

  def create
    @user = current_user
    @job = Job.new(job_params)
    @job.user = @user
    authorize @job
    if @job.save!
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  private

  def job_params
    params.require(:job).permit(:title, :category, :date, :price, :description, :guided, :photo, :location)
  end
end