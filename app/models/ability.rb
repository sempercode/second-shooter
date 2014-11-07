class Ability
  include CanCan::Ability
  def initialize(user)
    user ||= User.new
    can :manage, User, id: user.id
    if user.is_admin
      can :access, :rails_admin
      can :dashboard
      can :manage, :post
      end
    end
end