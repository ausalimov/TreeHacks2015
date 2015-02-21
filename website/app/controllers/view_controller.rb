class ViewController < ApplicationController
	# this controller will handle viewing the individual books or listings
	def book
		@query = params[:query]
	end

	def listing
	end

	def user
	end

	def course
	end
end
