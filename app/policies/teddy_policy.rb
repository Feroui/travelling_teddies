class TeddyPolicy < ApplicationPolicy

  def validate_code?
    true
  end
  class Scope < Scope
    def resolve
      scope
    end
  end
end
