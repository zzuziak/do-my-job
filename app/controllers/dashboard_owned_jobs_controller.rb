class DashboardOwnedJobsController < ApplicationController
  def index
    @jobs = policy_scope(Job).where(user_id: current_user.id)
  end
end
