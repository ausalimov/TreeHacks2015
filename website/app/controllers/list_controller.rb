class ListController < ApplicationController
	# this controller will handle listing all of the results from the search

	def index
		@books = params[:books]
	end
end
