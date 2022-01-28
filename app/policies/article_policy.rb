class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    if user_signed_in?
      return true
    end
  end

  def update?
    if user_signed_in?
      return true
    end
  end

  def delete?
    if user_signed_in?
      return true
    end
  end
end
