class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
    @bands = Band.all
  end

  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to album_url(@album.id)
    else
      flash[:notices] = "Could not create album."
      render :new
    end
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(params[:album])
      redirect_to album_url(@album.id)
    else
      flash[:notices] = "Could not update"
      render :edit
    end
  end

  def destroy
    album = Album.find(params[:id])
    album.destroy
    redirect_to albums_url
  end
end
