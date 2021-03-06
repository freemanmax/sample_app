class PagesController < ApplicationController
  def home
     @title = 'Home'
     if loged_in?
       @micropost  = current_user.microposts.build
       @feed_items = current_user.feed.paginate(page: params[:page])
     end
  end

  def contact
     @title = 'Contact'
  end

  def about
     @title = 'About'
  end
end
