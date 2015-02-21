class HomeController < ApplicationController
	def display
	end

	def search
        @course = Course.find_by_number(params[:query])
        @book = Book.find_by_isbn(params[:query])
        if @course 
		    redirect_to :controller => 'list', :action => 'index', :book_id => nil, :course_id => @course.id
        elsif @book 
		    redirect_to :controller => 'list', :action => 'index', :book_id => @book.id, :course_id => nil
        else 
		    redirect_to :controller => 'list', :action => 'index', :book_id => nil, :course_id => nil
        end
	end

end
