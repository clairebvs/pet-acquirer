class PictureFacade
  def random_picture
    Picture.new(service.pictures["pet"])
  end

  private
  def service
    PetFinderService.new
  end
end
