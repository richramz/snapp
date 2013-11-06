class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @image = Image.new(params[:image].permit(:file))
    @image.save
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    @image.update(params[:image].permit(:file))
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
  end

  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end
end
