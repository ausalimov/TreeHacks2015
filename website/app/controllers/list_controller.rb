class ListController < ApplicationController
	# this controller will handle listing all of the results from the search

	def index
        if params[:course_id]
            @course = Course.find_by_id(params[:course_id])
            @books = @course.books.all
        end
	end
end
