class InbetweensController < ApplicationController
  before_action :set_inbetweens, only: [:show]

  def index
    @inbetweens = Inbetween.all
  end

  def show
  end

  def new
    @inbetween = Inbetween.new
    # needed to instantiate the form_for
  end

  def create
    @inbetween = Inbetween.new(inbetween_params)
    @inbetween.user = current_user
    if @inbetween.save
      redirect_to inbetween_path(@inbetween)
    else
      render 'inbetweens/index'
    end
  end

  private

  def inbetween_params
    params.require(:inbetween).permit(:picture_id, :collection_id)
  end

  def set_inbetweens
    @inbetween = Inbetween.find(params[:id])
  end
end
