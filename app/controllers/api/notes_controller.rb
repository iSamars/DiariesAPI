module Api
  class NotesController < ApplicationController
    def index
      notes = Note.order('created_at DESC')
      render json: { notes: notes }
    end

    def show
      note = Note.find(params[:id])
      if note
        render json: note, status: :ok
      else
        head(:unprocessable_entity)\
      end
    end

    def create
      note = Note.new(note_params)
      if note.save
        render json: note, status: :created
      else
        render json: note.errors, status: :unprocessable_entity
      end
    end

    def destroy
      if Note.destroy(params[:id])
        head(:ok)
      else
        head(:unprocessable_entity)
      end
    end

    def update
      note = Note.find(params[:id])
      if note.update(note_params)
        render json: note, status: :ok
      else
        head(:unprocessable_entity)
      end
    end

    private

    def note_params
      params.require(:note).permit(:text, :diary_id)
    end

  end
end
