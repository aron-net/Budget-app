class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :read, :all
    can :manage, Category, user: user
    can :mange, Payment, user:
    
  end
end
