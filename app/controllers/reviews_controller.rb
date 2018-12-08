class ReviewsController < ApplicationController

  before_filter :authorize
  
  def create
    Review.create(create_params)

    redirect_to(:back)

  end  

  private
  def create_params
    params.require(:review).permit(:description,:rating).merge(product_id: params[:product_id], user_id: current_user.id)
  end

end
