class LoadData < ActiveRecord::Migration
  def up
      down # resets everything on a reset
      
      # Initial users
      u1 = User.new(:first_name => "Jason", :last_name => "Teplitz", :email => "jt@gmail.com")
      u1.save(:validate => false)

      u2 = User.new(:first_name => "Squats", :last_name => "Girl", :email => "sg@gmail.com")
      u2.save(:validate => false)

      
      # Books 
      b1 = Book.new(:isbn => "12345555555455", :name => "How to Serve Human", :author => "David X", :pub_date => "1969-04-03 04:33:12", :version => 1.0, :needed => true)

      b2 = Book.new(:isbn => "9781476793313", :name => "Jonathan Livingston Seagull", :author => "Richard Bach", :pub_date => "1969-04-03 04:33:12", :version => 1.0, :needed => true)

      b3 = Book.new(:isbn => "944444449333", :name => "Air Bud 2", :author => "Lex", :pub_date => "1989-04-03 04:33:12", :version => 4.0, :needed => false)


      # Listings 
      l1 = Listing.new(:date_time => "2015-08-03 10:44:23", :condition => 1)
      l1.user = u1
      l1.book = b1
      l1.save(:validate => false)

      l2 = Listing.new(:date_time => "2015-04-03 04:45:33", :condition => 2)
      l2.user = u2
      l2.book = b2
      l2.save(:validate => false)

      l3 = Listing.new(:date_time => "2014-04-03 04:45:33", :condition => 3)
      l3.user = u2
      l3.book = b3
      l3.save(:validate => false)

      l4 = Listing.new(:date_time => "2012-04-03 04:45:33", :condition => 5)
      l4.user = u2
      l4.book = b3
      l4.save(:validate => false)

      # Courses 
      c1 = Course.new(:name => "Intro to CS", :number => "CS106A", :prof => "Memeron Salami", :term => "Spring 2015")
      c1.books << [b1, b2]
      c1.save(:validate => false)

      c2 = Course.new(:name => "Intro to Space", :number => "CS106B", :prof => "Paul Warren", :term => "Fall 2016")
      c2.books << [b2, b3]
      c2.save(:validate => false)

      c3 = Course.new(:name => "Intro to Dennis", :number => "CS107", :prof => "Amy Xu", :term => "Winter 2015")
      c3.books << [b3]
      c3.save(:validate => false)

      #Save books
      b1.save(:validate => false)
      b2.save(:validate => false)
      b3.save(:validate => false)
    end

    def down
        User.delete_all
        Course.delete_all
        Book.delete_all
        Listing.delete_all
    end


end
