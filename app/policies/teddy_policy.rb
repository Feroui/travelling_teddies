class TeddyPolicy < ApplicationPolicy
  def backpacker?
    true
  end
  def validate_code?
    true
  end
  class Scope < Scope
    def resolve
      scope
    end
  end
end
