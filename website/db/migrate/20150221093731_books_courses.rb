class BooksCourses < ActiveRecord::Migration
  def change
    create_table :books_courses, :id => false do |t|
        t.integer :book_id
        t.integer :course_id
    end
  end
end
