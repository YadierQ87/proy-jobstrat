class Ability
    include CanCan::Ability
    def initialize(user)
      user ||= User.new
      if user.role == "admin"
        alias_action :create, :read, :update, :to => :cru
        can :manage, :all
        can :cru , :all
      elsif user.role == "guess"
        can :read, Job
        can :read, Article
        can :read, Lead
        can :read, Company
      elsif user.role == "candidate"
        alias_action :create, :read, :update, :to => :cru
        can :cru, Job
        can :cru, Article
        can :cru, Lead
      elsif user.role == "company"
         alias_action :create, :read, :update, :to => :cru
         can :cru, Job
         can :cru, Article
         can :cru, Lead
         can :cru, Messageemployee
         can :cru, Company
      end
    end
end


