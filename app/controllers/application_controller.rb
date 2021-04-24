class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :display_categories

  def display_categories
    @categories = Category.all
end


end
