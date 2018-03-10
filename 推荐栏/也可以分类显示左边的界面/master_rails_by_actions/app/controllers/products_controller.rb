class ProductsController < ApplicationController

  def show
    fetch_home_data
    
    @product = Product.find(params[:id])
    @productsflag = Product.onshelf.where(category_id: 15).page(params[:page] || 1).per_page(params[:per_page] || 12)
      .order("id desc").includes(:main_product_image)
  end

end