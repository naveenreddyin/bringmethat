class CountryController < ApplicationController
	def states
		render json: CS.states(params[:country]).to_json
	end

	def cities
		render json: CS.cities(params[:state], params[:country]).to_json
	end
end
