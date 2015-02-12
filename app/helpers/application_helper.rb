module ApplicationHelper
  def nav_menu
    links = "<li>#{ link_to('Home', root_path) }</li><li>#{ link_to('Nutrition Plans', nutritions_path) }</li><li>#{ link_to('FAQ', faq_path) }</li><li>#{ link_to('Contact Us', contact_path) }</li><p></p>"
    if @current_user.present?
      links += "<li>Hi #{ @current_user.try(:name) }</li><li>#{ link_to('My Profile', user_path(@current_user.id)) }</li><li>#{ link_to('Update Profile', edit_user_path(@current_user.id)) }</li><li>#{ link_to('My Meals', meals_path(@current_user.id)) }</li><li>#{ link_to('Add a Meal', new_meal_path(@current_user.id)) }</li><li>#{ link_to('Sign Out ', login_path, :method => :delete) }</li>"
    else
      links += "<li>#{ link_to('Sign up', new_user_path) }</li><li>#{ link_to('Log in', login_path) }</li>"
    end

    links
  end
end
