class ProfilesController < ApplicationController
 def show  
	@photos = User.find_by(name: params[:name]).photos.order('created_at DESC')
 end  
end
