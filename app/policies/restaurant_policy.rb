class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    record.user == user
    # @restaurant.user == current_user
  end

  def create?
    !user.nil?
  end

  def destroy?
    record.user == user
  end
end
