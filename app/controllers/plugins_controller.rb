class PluginsController < ApplicationController
	def create 
		@software = Software.find(params[:software_id])
		@plugin = @software.plugins.create(params[:plugin])
		redirect_to software_path(@software)
	end

	def destroy
      @software = Software.find(params[:software_id])
	  @plugin = @software.plugins.find(params[:id])
	  @plugin.destroy
	  redirect_to software_path(@software)
    end
end
