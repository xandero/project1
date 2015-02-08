class PagesController < ApplicationController
  def home
    @user = User.find session[:id] if session[:id].present?
  end
end
