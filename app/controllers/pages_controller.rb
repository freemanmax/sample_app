class PagesController < ApplicationController
  def home
     @micropost = current_user.microposts.build if loged_in?
     @title = 'Home'
  end

  def contact
     @title = 'Contact'
  end

  def about
     @title = 'About'
  end
end
