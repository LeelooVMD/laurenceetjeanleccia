class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :laurenceleccia, :laurence_lestoiles ]

  def home
  end

  def laurenceleccia
    @texts = Text.all
  end

  def laurence_lestoiles
  end

  def jeanleccia
    @texts = Text.all
  end

  def jean_lestoiles
  end
end
