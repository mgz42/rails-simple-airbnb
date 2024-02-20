class FlatsController < ApplicationController
  def index
    @flats = Flat.all
    query = params["search"]
    if query
      @flats = Flat.where("name LIKE ?", "%#{query}%")
    end
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(safe_params)
    @flat.save
    redirect_to flats_path
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(safe_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  private

  def safe_params
    params.require(:flat).permit(:name, :address, :price_per_night, :number_of_guests, :description, :picture_url)
  end
end
