class PagesController < ApplicationController
  def home
     @title = 'Home'
  end

  def register
     @title = 'Register'
  end

  def about
     @title = 'About'
  end
end
