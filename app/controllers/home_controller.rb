class HomeController < ApplicationController
  def index
    @bangs = Bang.last(3).reverse
    
  end
  
  def mypage
    @user = User.find(current_user.id)
    
  end
end
