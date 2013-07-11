class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(params[:track])
    if @track.save
      redirect_to track_url(@track.id)
    else
      flash[:notices] = "Could not create track."
      render :new
    end
  end

  def show
    @track = Track.find(params[:id])
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])
    if @track.update_attributes(params[:track])
      redirect_to track_url(@track.id)
    else
      flash[:notices] = "Could not edit track."
      render :edit
    end
  end

  def destroy
    track = Track.find(params[:id])
    track.destroy
    redirect_to tracks_url
  end
end
