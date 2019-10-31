class StudyNotesController < ApplicationController

    get '/study_notes' do
        @study_notes = StudyNote.all
        erb :"study_notes/index"
    end

    get '/study_notes/new' do
        @users = User.all
        erb :"study_notes/new"
    end

    get '/study_notes/:id/edit' do
        @users = User.all
        @study_note = StudyNote.find_by_id(params[:id])
        erb :"study_notes/edit"
    end

    patch '/study_notes/:id' do
        # @users = User.all
        @study_note = StudyNote.find_by_id(params[:id])
        params.delete("_method")
        if @study_note.update(params)
            redirect "/study_notes/#{@study_note.id}"
        else
            redirect "/study_notes/#{@study_note.id}/edit"
        end
    end

    get '/study_notes/:id' do
        # @users = User.all
        @study_note = StudyNote.find_by_id(params["id"])
        erb :"study_notes/show"
    end

    post '/study_notes/:id' do
        @study_note = StudyNote.find_by_id(params["id"])
        erb :"study_notes/show"
      end

    post '/study_notes' do
        study_note = StudyNote.new(params)
        if study_note.save
            redirect "/study_notes/#{study_note.id}"
        else
            redirect "/study_notes/new"
        end
    end
end