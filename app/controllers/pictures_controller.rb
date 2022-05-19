class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
    # needed to instantiate the form_for
  end

  def create
    @picture = Picture.new(picture_params)
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
end
