class AddProductImagesIndex < ActiveRecord::Migration
  def change
  	    add_index :product_images, [:product_id, :weight]
  end
end
