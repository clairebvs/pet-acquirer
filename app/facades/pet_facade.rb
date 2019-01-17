class PetFacade

  def initialize(pet_params)
    @pet_params = pet_params
  end

  def pet_found
    if service.all_pets["petfinder"]["pets"].present?
      pet_object
    elsif service.all_pets["petfinder"]["header"]["status"]["message"]["$t"].include?("Invalid")
     "Invalid location"
    end
  end

  def pet_object
    service.all_pets["petfinder"]["pets"]["pet"].map do |result|
      Pet.new(result)
    end
  end


  def service
    PetFinderService.new(@pet_params)
  end
end
