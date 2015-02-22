class ListController < ApplicationController
	# this controller will handle listing all of the results from the search

	def course
        if params[:id]
            @course = Course.find_by_id(params[:id])
            @books = @course.books.all
        end
	end

    def book
        @book = Book.find_by_id(params[:id])
        @listings = @book.listings.all
    end
end
