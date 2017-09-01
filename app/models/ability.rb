class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role == "admin"
      can :manage, :all
      can :create, Job
    end
    if user.role? and (user.role == "guess" || user.role == "candidato" || user.role == "compannia")
      can :read, Category
      can :read, Job
      can :read, Article
      can :read, Company
      can :read, Employee
    end
    if user.role? and user.role == "candidato"
      can :edit, Employee
    end
    if user.role? and (user.role == "admin" || user.role == "candidato" || user.role == "compannia")
      can :create, Job
      can :edit, Job
    end
    if user.role? and user.role == "compannia"
      can :edit, Company
    end

  end

end
