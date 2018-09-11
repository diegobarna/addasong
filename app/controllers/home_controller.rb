class HomeController < ApplicationController
  def index
    @playlist_id = Addasong.config.fetch("spotify_playlist_id", nil)
    @user_id = Addasong.config.fetch("spotify_user_id", nil)
    @phone_number = Addasong.config.fetch("phone_number", nil)
  end

  def callback
    @spotify_user = RSpotify::User.new(request.env["omniauth.auth"])
    @new_playlist = @spotify_user.create_playlist!("Chulipandi")
  end
end
