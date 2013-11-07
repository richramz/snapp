class AlbumsController < ApplicationController
  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params[:album].permit(:title))
    @album.save
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    @album.update(params[:album].permit(:title))
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
  end

  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end
end
