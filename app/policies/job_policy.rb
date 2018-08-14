class JobPolicy < ApplicationPolicy


  def new?
    create?
  end

  def create?
    true
  end

  private

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
