class HomeController < ApplicationController
	def display
	end

	def search
		@query = params[:query]
		@course = search_courses(@query)
		if (@course != nil) then
			@books = @course.books
		else
			@books = search_books(@query)
		end
		redirect_to :controller => 'list', :action => 'index', :books => @books
	end

	private
	def search_courses(query)
		Courses.all.each do |course|
			if course.name == query || course.number == query then
				return course
			end
		end
	end

	def search_books(query)
		Books.all.each do |book|
			if (book.name == query || book.isbn.to_s == query) then
				return book
			end
		end
	end
end
