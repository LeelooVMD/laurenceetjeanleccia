class PicturesController < ApplicationController
  before_action :set_pictures, only: [:show]

  def index
    @pictures = Picture.all
  end

  def show
  end

  def new
    @picture = Picture.new
    # needed to instantiate the form_for
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user = current_user
    if @picture.save
      redirect_to picture_path(@picture)
    else
      render 'pictures/show'
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:name)
  end

  def set_pictures
    @picture = Picture.find(params[:id])
  end
end
