class UserPolicy < ApplicationPolicy
  def show?
    user
  end

  def edit?
    user
  end

  def update?
    user
  end
end
