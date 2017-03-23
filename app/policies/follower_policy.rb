class FollowerPolicy < ApplicationPolicy
  def create?
    true
  end
  def destroy?
    true
  end
end
