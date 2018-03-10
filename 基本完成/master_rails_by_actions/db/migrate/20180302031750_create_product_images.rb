class CreateProductImages < ActiveRecord::Migration
  def change
    create_table :product_images do |t|
       t.belongs_to :product
      t.integer :weight, default: 0
      t.attachment :image	
      t.timestamps
    end
  end
end
