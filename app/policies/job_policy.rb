class JobPolicy < ApplicationPolicy

  def index?
    return true
  end

  def show?
    return true
  end

  def new?
    create?
  end

  def create?
    true
  end

  def edit?
    update?
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  private

  class Scope < Scope
    def resolve
      scope.all
    end
  end


end
