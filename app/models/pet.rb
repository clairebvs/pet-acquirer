class Pet
  attr_reader :name, :photo, :size, :age, :location

  def initialize(pet_data)
    @name = pet_data["name"]["$t"]
    @size = pet_data["size"]["$t"]
    @age = pet_data["age"]["$t"]
    @location = city_state(pet_data)
    @photo = photo_check(pet_data)
  end

  def photo_check(pet_data)
    if pet_data["media"] == {}
      "No pictures"
    elsif pet_data["media"]["photos"]["photo"].class == Array
      pet_data["media"]["photos"]["photo"][0]["$t"]
    else
      pet_data["media"]["photos"]["photo"]["$t"]
    end
  end

  def city_state(pet_data)
    pet_data["contact"]["city"]["$t"] + ' ' + pet_data["contact"]["state"]["$t"]
  end
end
