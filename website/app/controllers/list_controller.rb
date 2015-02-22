class ListController < ApplicationController
	# this controller will handle listing all of the results from the search

	def course
        if params[:id]
            @course = Course.find_by_id(params[:id])
            @books = @course.books.all
        end
	end

    def user
        @user = User.find_by_id(params[:id])
    end

    def book
        @book = Book.find_by_id(params[:id])
        @listings = @book.listings.all
    end

    def new
        @new_list = Listing.new
    end

    private
    def condition_from_num(num)
        if num == 1
            return "New"
        elsif num == 2
            return "Like New"
        elsif num == 3
            return "Good"
        elsif num == 4
            return "Fair"
        end
    end

    helper_method :condition_from_num
end
