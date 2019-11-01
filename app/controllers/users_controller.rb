class UsersController < ApplicationController

    get '/study_notes/signup' do
        erb :'/study_notes/signup'
    end

    post '/study_notes' do
        study_note = StudyNote.new(params)
        if @study_note.save
            session[:user_id] = @study_note.id
            redirect "/study_notes"
        else
            redirect "/study_notes/signup"
        end
    end

end 