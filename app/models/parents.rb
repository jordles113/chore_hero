class Parent < ActiveRecord::Base
    validates :username, uniqueness: true
    has_secure_password

    has_many :kids
    has_many :chores
end 