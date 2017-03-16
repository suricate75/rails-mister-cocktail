class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail=Cocktail.new

  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end

  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end


# def index
#     @restaurants = Restaurant.all
#   end

#   def show
#     @restaurant = Restaurant.find(params[:id])
#   end

#   def new
#     @restaurant = Restaurant.new
#   end

#   def create
#     @restaurant = Restaurant.new(restaurant_params)
#     has_been_saved = @restaurant.save
#     if has_been_saved
#       redirect_to restaurant_path(@restaurant)
#     else
#       render :new
#     end
#   end

#   def restaurant_params
#     params.require(:restaurant).permit(:name, :address, :category, :phone_number)
#   end
# end
