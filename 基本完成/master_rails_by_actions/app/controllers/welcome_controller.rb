class WelcomeController < ApplicationController
  def index
    fetch_home_data
    
    @products = Product.onshelf.where(category_id: 13).page(params[:page] || 1).per_page(params[:per_page] || 12)
      .order("id desc").includes(:main_product_image)
    @productsflag = Product.onshelf.where(category_id: 15).page(params[:page] || 1).per_page(params[:per_page] || 12)
      .order("id desc").includes(:main_product_image)

  end
end
