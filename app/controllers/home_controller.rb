class HomeController < ApplicationController
  def index
    @picture_day = PictureFacade.new
  end
end
