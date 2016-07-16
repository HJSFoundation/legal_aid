class UserPolicy < ApplicationPolicy

  def show?
    @user == @record || @user.admin? || @user.superadmin?
  end

  def edit?
    @user.superadmin?
  end

  def update?
    user.superadmin?
  end

  def destroy?
    user.superadmin?
  end

  def unapproved?
    user.admin?
  end


end