class MenusController < ApplicationController
  def index
    @food1 = Food.where(genre_id: 2)
    @food1 = @food1.page(params[:page]).per(6)
    # @food2 = Food.where(genre_id: 3)
    # @food2 = @food2.page(params[:page]).per(2)
    # @food3 = Food.where(genre_id: 4)
    # @food3 = @food3.page(params[:page]).per(2)
  end

  def index2
    @food2 = Food.where(genre_id: 3)
    @food2 = @food2.page(params[:page]).per(6)
  end

  def index3
    @food3 = Food.where(genre_id: 4)
    @food3 = @food3.page(params[:page]).per(6)
  end


  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to menus_path
    else
      render :new
    end
  end

  # def show
  #   @food = Food.find(params[:id])

  # end

  def edit
    @food = Food.find(params[:id])
    # unless @prototype.user.id == current_user.id
    #   redirect_to root_path
    # end
  end

  def update
    @food = Food.find(params[:id])
    if @food.update(food_params)
      redirect_to menus_path
    else
      render :edit
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to menus_path
  end


  private

  def food_params
    params.require(:food).permit(:title, :money, :concept, :image, :genre_id)
  end
end
