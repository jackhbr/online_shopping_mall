class AddShoppingCartsColumn < ActiveRecord::Migration
  def change
  	add_column :shopping_carts, :flagclick, :integer , default: 0
  end
end
