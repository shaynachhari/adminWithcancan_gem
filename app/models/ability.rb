class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin?
      can :read, :all
    elsif user.super_admin?
      can :manage, :all
    end
    can :read, ActiveAdmin::Page, name: 'Dashboard'
  end
  
end