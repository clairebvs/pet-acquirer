class HomeController < ApplicationController
  def index
    @picture_day = Picture.find_random_picture
  end
end
