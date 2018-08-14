class DashboardOwnedJobsController < ApplicationController
  def index
    @jobs = Job.all
  end
end
