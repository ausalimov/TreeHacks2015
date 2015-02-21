class Books < ActiveRecord::Base
    has_many :listings
    has_and_belongs_to_many :courses
end
