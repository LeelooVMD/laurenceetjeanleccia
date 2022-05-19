class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def new
    @collection = Collection.new
    # needed to instantiate the form_for
  end

  def create
    @collection = Collection.new(collection_params)
    if @collection.save
      redirect_to collection_path(@collection)
    else
      render 'collections/show'
    end
  end

  private

  def collection_params
    params.require(:collection).permit(:name, :address, :rating)
  end
end
