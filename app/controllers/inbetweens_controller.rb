class InbetweensController < ApplicationController
  def index
    @inbetweens = Inbetween.all
  end

  def show
    authorize @inbetween
  end
end
