class PagesController < ApplicationController
  def home
    @user = User.find session[:user_id] if session[:user_id].present?
  end

  def about
  end

  def faq
  end
  
  def welcome
  end

  def contact
  end
end
