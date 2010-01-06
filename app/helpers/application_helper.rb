# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def page_is?(current_page)
    controller.controller_name == current_page
  end
end
