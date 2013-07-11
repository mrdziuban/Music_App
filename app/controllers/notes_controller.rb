class NotesController < ApplicationController

  def new
    @note = Note.new
    @track_id = params[:track_id]
  end

  def create
    @note = Note.new(params[:note])
    if @note.save
      redirect_to track_url(params[:track_id])
    else
      render :new
    end
  end


  def edit
    @note = Note.find(params[:id])
    @track_id = params[:track_id]
  end

  def update
    @note = Note.find(params[:id])
    if @note.update_attributes(params[:note])
      redirect_to track_url(@note.track_id)
    else
      render :edit
    end
  end

  def destroy
    note = Note.find(params[:id])
    track_id = note.track_id
    note.destroy
    redirect_to track_url(track_id)
  end

end
