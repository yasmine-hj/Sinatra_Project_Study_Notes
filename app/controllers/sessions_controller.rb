class SessionsController < ApplicationController

    get '/login' do
        erb :"sessions/login"
    end

    post '/login' do
        user = User.find_by(name: params[:name])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect "/study_notes"
        else
            redirect "/login"
        end
    end
end