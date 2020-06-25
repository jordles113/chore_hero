class Chore < ActiveRecord::Base
    belongs_to :parents 
    has_many :kids, through: :parents 
end 