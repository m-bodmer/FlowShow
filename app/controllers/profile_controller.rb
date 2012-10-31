class ProfileController < ApplicationController
  def main
  	@software = Software.all
    respond_to do |format|
      format.html # index.html.erb
      format.json  { render :json => @software }
    end
  end
end
