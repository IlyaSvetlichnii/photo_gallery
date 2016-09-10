class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy, :like] 

  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def show

  end

  def edit
  	
  end

  def create
    @photo = current_user.photos.build(photo_params)

    if @photo.save
      flash[:success] = "Your photo has been created!"
      redirect_to root_path
    else
      flash[:alert] = "Your new photo couldn't be created!  Please check the form."
      render :new
    end
  end
  

  def update
    if @photo.update(photo_params)
      flash[:success] = "photo updated."
      redirect_to photos_path
    else
      flash.now[:alert] = "Update failed."
      render :edit
    end
  end

  def destroy
    @photo.destroy
    redirect_to root_path
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :caption)
  end

  def set_photo  
    @photo = Photo.find(params[:id])
  end 
end
