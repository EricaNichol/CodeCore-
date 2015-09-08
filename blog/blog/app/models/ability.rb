class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    can :manage, [Post, Comment] do |x|
      x.user == user
    end

    can :destroy, [Like, Favorite] do |x|
      x.user == user
    end
  end
end
