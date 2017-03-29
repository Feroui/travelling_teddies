class TeddyPolicy < ApplicationPolicy
  def backpacker?
    true
  end
  def validate_code?
    true
  end
  def new?
    true
  end
  def create?
    true
  end
  def congrat?
    true
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
