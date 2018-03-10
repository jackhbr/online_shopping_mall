class Admin::SessionsController < Admin::BaseController
  def new
  	 @user = User.all
  end
end
