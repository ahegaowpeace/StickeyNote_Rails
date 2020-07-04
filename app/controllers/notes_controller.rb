class NotesController < ApplicationController
  def index
		@note = Note.new
		@notes = Note.all.page(params[:page]).per(100)
  end

	def edit
		@note = Note.find(params[:id])
	end

	def update
		@note = Note.find(params[:id])

		if @note.update(params.require(:note).permit(:title, :content))
			redirect_to edit_note_path(@note.id)
		else
			render edit_note_path(@note.id)
		end
	end

	def create
		@note = Note.new(params.require(:note).permit(:title, :content))
		if @note.save
			redirect_to root_path
		end
	end

	def destroy
		@note = Note.find(params[:id])
		if @note.destroy
			redirect_to root_path
		end
	end
end
