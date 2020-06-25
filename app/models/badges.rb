class Badge < ActiveRecord::Base 
    belongs_to :kids
    belongs_to :achievements
end 