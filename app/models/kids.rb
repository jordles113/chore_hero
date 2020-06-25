class Kid < ActiveRecord::Base 
    belongs_to :parents 
    has_many :chores, through: :parents 
    has_many :badges, dependent: :destroy
    has_many :achievements, through: :badges 
end 