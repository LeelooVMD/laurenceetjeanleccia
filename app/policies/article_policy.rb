class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    record.user == user || user.admin
  end

  def update?
    record.user == user || user.admin
  end

  def delete?
    record.user == user || user.admin
  end
end
