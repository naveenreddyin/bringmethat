class CountryController < ApplicationController
	def states
		render json: CS.states(params[:country]).to_json
	end
end
