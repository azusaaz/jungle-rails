class ProductsController < ApplicationController

  # before_filter :authorize
  
  def index
    @products = Product.all.order(created_at: :desc)
  end

  def new
    Review.create(create_params)
  end  

  def show
    @product = Product.find params[:id]
    @reviews = @product.reviews.order(created_at: :desc)
    @review = Review.new
  end

  private
  def create_params
    params.require(:review).permit(:description).merge(description: params[:review.description], rating: params[:review.rating],product_id: params[:product_id], user_id: current_user.id)
  end

end
