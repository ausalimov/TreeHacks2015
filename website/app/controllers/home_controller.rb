class HomeController < ApplicationController
	def display
	end

	def search
        @course = Course.find_by_number(params[:query])
        @book = Book.find_by_name(params[:query])
        if !(@book) then
            @book = Book.find_by_isbn(params[:query])
        end
        if @course 
		    redirect_to :controller => :list, :action => :course, :id => @course.id
        elsif @book 
		    redirect_to :controller => :list, :action => :book, :id => @book.id
        else 
            flash[:notice] = "Could not find a course or book with that name"
            render :action => :display
        end
	end

end
