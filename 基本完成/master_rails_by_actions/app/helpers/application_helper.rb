module ApplicationHelper
  def show_add_to_cart product, options = {}
    html_class = "btn btn-danger add-to-cart-btn"
    html_class += " #{options[:html_class]}" unless options[:html_class].blank?

   "<a href='#{shopping_carts_path}' class='#{html_class}' data-product-id='#{product.id 

}'><i class='fa'></i>加入购物车</a>".html_safe

  end


end
