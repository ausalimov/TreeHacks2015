class Courses < ActiveRecord::Base
    has_and_belongs_to_many :books 
end
