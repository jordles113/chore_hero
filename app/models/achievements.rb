class Achievement < ActiveRecord::Base 
    has_many :badges 
    has_many :kids, through: :badges 
end 