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
    if service.all_pets["petfinder"]["pets"]["pet"].class == Array
      service.all_pets["petfinder"]["pets"]["pet"].map do |pet_result|
        Pet.new(pet_result)
      end
    else
      service.all_pets["petfinder"]["pets"].map do |pet, result|
        Pet.new(result)
      end
    end
  end


  def service
    PetFinderService.new(@pet_params)
  end
end
