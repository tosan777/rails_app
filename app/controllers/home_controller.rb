class HomeController < ApplicationController

  def index
  end

  def after_sign_in_path_for(resource)
    topics_show_path
  end
end
