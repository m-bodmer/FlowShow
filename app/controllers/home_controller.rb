class HomeController < ApplicationController
  def index
  end

  def after_sign_up_path_for(resource)
  	params[:next] || super
  end
end
