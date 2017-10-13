class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @existing_review = @product.reviews.order(created_at: :desc)
    @review = @product.reviews.order(created_at: :desc)
    @review = @review.new
  end

end
