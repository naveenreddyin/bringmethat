class CountryController < ApplicationController
	def states
		render json: CS.cities(params[:country]).to_json
	end
end
