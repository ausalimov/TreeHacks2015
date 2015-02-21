class HomeController < ApplicationController
	def display
	end

	def search
        @course = Course.find_by_number(params[:query])
        @book = Book.find_by_isbn(params[:query])
        if @course 
		    redirect_to :controller => :list, :action => :course, :id => @course.id
        elsif @book 
		    redirect_to :controller => :list, :action => :book, :id => @book.id
        else 
            # Include a flash notice or validation error
            render :action => :display
        end
	end

end
