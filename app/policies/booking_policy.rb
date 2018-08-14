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
    record.last.user == user
  end

end
