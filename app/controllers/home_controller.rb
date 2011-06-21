class HomeController < ApplicationController

  def index
    @products = Product.order("position")
  end
  
  def show
    @product = Product.find(params[:id].split("_")[0])
    @product.view_count = @product.view_count.to_i + 1
    @product.save
    redirect_to  "#{@product.product_url}?utm_source=semmicrosite%2B&utm_medium=link%2B&utm_campaign=semmicrosite%2B"
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