class HomeController < ApplicationController

  def index
    
    @products = Product.where("week_number = #{Time.now.strftime("%U")}").order("position")
    if @products.empty?
      #max = Product.max("week_number")
      #@products = Product.where("week_number = #{max}").order("position")
      @products = Product.order("position")
    end
  end
  
  def show
    @product = Product.find(params[:id].split("_")[0])
    @product.view_count = @product.view_count.to_i + 1
    @product.save
    redirect_to  "#{@product.product_url}?utm_source=semmicrosite%2B&utm_medium=link%2B&utm_campaign=semmicrosite%2B"
  end
  
  def signup
    create if request.post?
  end
  
  def create
    UserSignup.create(
      :multiply_user_id => params[:muid],
      :name => params[:name],
      :age  => params[:age],
      :contact_number => params[:num],
      :address => params[:add],
      :size_of_shirt => params[:size]
    )
    render "signup_complete"
  end
  
  def social
    #Cookie:  fbs_213790775324755="access_token=213790775324755%7C2.AQDPKUdO34D1xczG.3600.1309752000.1-783183828%7C7XhxJXdFMKGmoxygNn-AOm8CYbo&base_domain=www.multiplyphilippines.com&expires=1309752000&secret=PsnQ400mIzY21oXbit_j7g__&session_key=2.AQDPKUdO34D1xczG.3600.1309752000.1-783183828&sig=6fe2f3731a4bce084001637444eec602&uid=783183828";
    #cookies[:fbs_213790775324755]
    render :nothing => true
  end
end