class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
        t.string :name
        t.string :number 
        t.string :prof
        t.string :term
        

      t.timestamps
    end
  end
end
