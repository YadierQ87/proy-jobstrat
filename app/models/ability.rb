class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role == "admin"
      can :manage, :all
    end
    if user.role == "seller"
      alias_action :create, :read, :update, :to => :cru
      can :cru, Sale
      can :cru, SaleDetail
      can :cru, Client
    end
    if user.role? :guess,:candidato,:compannia
      can :read, Category
      can :read, Job
      can :read, Article
      can :read, Company
      can :read, Employee
    end
    if user.role? :candidato
      can :edit, Employee
      can :create, Job
      can :edit, Job
    end
    if user.role? :compannia
      can :edit, Company
      can :create, Job
      can :edit, Job
    end

  end

end
