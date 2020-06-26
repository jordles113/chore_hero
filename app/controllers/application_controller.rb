class ApplicationController < Sinatra::Base 
    configure do
        set :public_folder, Proc.new {File.join(root, "public")}
        set :views, -> {File.join(root, "../views")}
        enable :sessions
        set :session_secret, ENV['SESSION_SECRET']
    end

    get '/' do 
        if logged_in? 
            redirect '/dashboard'
        else
             erb :index
        end 
    end 

    get '/learn' do 
        erb :'parents/learn'
    end 

    helpers do 

        def current_parent
            @parent ||= Parent.find_by(id: session[:parent_id])
        end 
        
        def logged_in? 
            !!current_parent 
        end


        def authenticate
            redirect 'login' if !logged_in?  
        end 

    end 
    
end 