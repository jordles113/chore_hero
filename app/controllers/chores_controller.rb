class ChoresController < ApplicationController 


    get '/chores' do 
        @chores = Chore.all 
        erb :'chores/index'
    end 
end 