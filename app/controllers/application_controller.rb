class ApplicationController < Sinatra::Base 

    set :views, ->{File.join(root, "../views")}

    get '/' do 
        erb :index
    end 

    get '/learn' do 
        erb :'parents/learn'
    end 
    
end 