class JobsController < ApplicationController
  def new
    authorize @job
    @job = Job.new
  end

  def create
    authorize @job
    @job = Job.new(job_params)
    if @job.save
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
