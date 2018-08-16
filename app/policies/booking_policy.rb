class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def new?
    create?
  end

  def show?
    return true
  end

  def create?
    user != record.job.user
  end

  def index?
    true
  end

  def requests?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end
end
