class AdoptersController < ApplicationController

	def index
		@adopters = Adopter.all
	end
end
