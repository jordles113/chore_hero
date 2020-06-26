class ChoresController < ApplicationController 


    get '/chores' do 
        @chores = Chore.all
        erb :'chores/index'
    end 

    get '/chores/new' do 
        erb :'chores/new'
    end 

    post '/chores' do 
        @chore = Chore.create(name: params[:name], description: params[:description])
        redirect '/chores'
    end
end 