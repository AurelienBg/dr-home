class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  # current_user <=> user
  def edit?
    true
  end


  def update?
    true
  end

  def destroy?
    is_user_owner_or_admin?
  end

  private

  def is_user_owner_or_admin?
    record.user == user || user.admin?
  end

end
