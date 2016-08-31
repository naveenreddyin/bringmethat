class BrowseController < ApplicationController

	def index
		@message = "Hello, how are you today?"
		puts params[:from]
	end
	
end
