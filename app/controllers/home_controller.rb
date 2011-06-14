class HomeController < ApplicationController

  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
    @product.view_count = @product.view_count.to_i + 1
    @product.save
    
    logger.info "errr"
    redirect_to @product.product_url
  end
end
