class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
	@restaurants = Restaurant.find(params[:id])
  end

  def new 
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant) 
  end

# Create with if /else condition inside
  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render 'new'
    end
  end


  private
  
  def restaurant_params #to protect from hacking in post, checking the params sent
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
