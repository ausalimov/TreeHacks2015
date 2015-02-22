class ViewController < ApplicationController
	# this controller will handle viewing the individual books or listings
	def book
		@book = Book.find_by_id(params[:id])
		@listings = @book.listings.first(5)
	end

	def listing
	end

	def user
	end

	def course
		@course = Course.find_by_id(params[:id])
		@books = @course.books
	end
end
