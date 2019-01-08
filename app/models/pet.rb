class Pet
  attr_reader :name, :photo, :size, :age, :location

  def initialize(pet_data)

    @name = pet_data["name"]["$t"]
    # @photo = photo_check(pet_data)
    # @breed = breed_check(pet_data)
  end
end
