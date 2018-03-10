class ProductsController < ApplicationController

  def show
    fetch_home_data
     
    @product = Product.find(params[:id])
   
    if @product.category_id == 15 then
      @user = User.find_by_uuid(session[:user_uuid])
    
        @user.update_attribute :clickflag ,1
   
    end

    @productsflag = Product.onshelf.where(category_id: 15).page(params[:page] || 1).per_page(params[:per_page] || 12)
      .order("id desc").includes(:main_product_image)
  end

end