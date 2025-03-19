# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
      if user
         can :read, Task
      end
  end
end
