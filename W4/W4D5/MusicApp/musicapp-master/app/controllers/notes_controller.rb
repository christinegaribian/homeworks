class NotesController < ApplicationController
  before_action :require_login

  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id
    @note.track_id = params[:track_id]
    @note.save
    redirect_to track_url(@note.track)
  end

  def destroy
    @note = Note.find(params[:id])
    track = @note.track
    @note.destroy
    redirect_to track_url(track)
  end

  private

  def note_params
    params.require(:note).permit(:content)
  end

end
