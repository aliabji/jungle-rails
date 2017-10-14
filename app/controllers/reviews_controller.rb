class ReviewsController < ApplicationController

  def create

    @product = Product.find params[:product_id]
    @review = @product.new_review(review_params, current_user)
    new_review = @review
    product_show = @product

    if @review.save
      redirect_to product_show, notice: 'Your review has been submitted. Thank you.'
    else
      redirect_to product_show
    end

  end

  def delete
    @product = Product.find params[:product_id]
    @review = @product.reviews.find(params[:review_id])
    @review.destroy
    product_show = @product

    redirect_to product_show, notice: 'Your review has been deleted.'
    
  end


  private

  def review_params
    params.require(:review).permit(:description, :rating, :product_id, :user_id)
  end
end
