class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :laurenceleccia ]

  def home
  end

  def laurenceleccia
    @texts = Text.all
  end
end
