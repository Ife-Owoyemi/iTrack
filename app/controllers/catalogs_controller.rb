class CatalogsController < ApplicationController
	respond_to :html, :json

	def show
		@courses = Catalog.all
	end
	def index
		@courses = Catalog.all
	end
	def update
    	@courses =  Catalog.find(params[:id])
    	@courses.update_attributes(params[:catalog])
    	respond_with @courses
	end
end