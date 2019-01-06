class HomeController < ApplicationController
  def index
    picture = Picture.new
    @picture_day = picture.find_random
  end
end
