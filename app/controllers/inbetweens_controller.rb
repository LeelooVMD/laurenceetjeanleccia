class InbetweensController < ApplicationController
  def index
    @inbetweens = Inbetween.all
  end

  def show
    authorize @inbetween
  end

  def new
    @inbetween = Inbetween.new
    # needed to instantiate the form_for
  end

  def create
    @inbetween = Inbetween.new(inbetween_params)
    if @inbetween.save
      redirect_to inbetween_path(@inbetween)
    else
      render 'inbetweens/show'
    end
  end

  private

  def inbetween_params
    params.require(:inbetween).permit(:picture_id, :collectin_id)
  end
end
