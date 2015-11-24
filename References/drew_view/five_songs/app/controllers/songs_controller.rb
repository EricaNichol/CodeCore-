class SongsController < ApplicationController

  def index
    @songs = Song.recent_five
  end

  def new
    @song = Song.new 
  end

end
