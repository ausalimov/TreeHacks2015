class Users < ActiveRecord::Base
    has_many :listings 
end
