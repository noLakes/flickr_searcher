class ImagesController < ApplicationController
  
  def home
    if params[:image]
      flickr = Flickr.new ENV["FLICKR_API_KEY"], ENV["FLICKR_SHARED_SECRET"]
      @photos = flickr.photos.search(:user_id => params[:image][:user_id])
    end
  end

end