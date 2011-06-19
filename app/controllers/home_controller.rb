class HomeController < ApplicationController

  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
    @product.view_count = @product.view_count.to_i + 1
    @product.save
    redirect_to @product.product_url
  end
  
  def create
    UserSignup.create(
      :email => params[:email], 
      :multiply_user_id => params[:muid],
      :last_name => params[:ln],
      :first_name => params[:fn],
      :mobile_number => params[:mob]
    )
    render :nothing => true, :status => 200
  end
end