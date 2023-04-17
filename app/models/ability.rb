class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    return unless user.present?

    can :manage, Appointment, user_id: user.id

    can :manage, :all if user.admin?
  end
end
