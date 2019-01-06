class PictureFacade
  def random_picture
    @random_picture ||= service.pictures.map do |pet, result|
      Picture.new(result)
    end
  end

  private
  def service
    PetFinderService.new
  end
end
