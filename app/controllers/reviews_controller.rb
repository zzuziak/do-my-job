class ReviewsController < ApplicationController
  before_action :set_job, only: [:new, :create]
  def new
    @review = Review.new
    authorize @review
  end

  def create
    @user = current_user
    @review = Review.new(review_params)
    authorize @review
    @review.user = @user
    @review.job = @job
    if @review.save!
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  private

  def set_job
    @job = Job.find(params[:job_id])
  end

  def review_params
    params.require(:review).permit(:title, :message, :rating)
  end
end
