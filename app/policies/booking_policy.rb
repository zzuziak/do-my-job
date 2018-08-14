class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def new?
    return true
  end

  def create?
    return true
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
end
