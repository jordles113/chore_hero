class ParentsController < ApplicationController 
    get '/dashboard' do 
        @parent = current_parent
        erb :'parents/dashboard'
    end 

    get '/login' do 
        erb :"parents/login"
    end 

    get '/signup' do 
        erb :"parents/signup"
    end 

    post '/login' do 
        @parent = Parent.find_by(username: params[:username])
        if @parent && @parent.authenticate(params[:password])
            session[:parent_id] = @parent.id
            redirect '/dashboard'
        else 
            @error = "Invalid Credentials. Please try again."
            erb :"parent/login"
        end 
    end 

    post '/signup' do 
        if @parent = Parent.create(name: params[:name], username: params[:username], password: params[:password], email: params[:email])
            session[:parent_id] = @parent.id 
            redirect '/dashboard'
        else 
            erb :'parents/signup'
        end 
    end 

end