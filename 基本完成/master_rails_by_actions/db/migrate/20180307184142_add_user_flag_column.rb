class AddUserFlagColumn < ActiveRecord::Migration
  def change
  	add_column :users, :clickflag, :integer , default: 0
  	add_column :users, :plusflag, :integer , default: 0
  end
end
