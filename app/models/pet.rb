class Pet
  attr_reader :name, :photo, :size, :age, :location

  def initialize(pet_data)
    @name = name_check(pet_data)
    @size = size_check(pet_data)
    @age = age_check(pet_data)
    @location = city_state(pet_data)
    @photo = photo_check(pet_data)
  end

  def photo_check(pet_data)
    if !pet_data["media"].present?
      "No pictures"
    elsif pet_data["media"]["photos"]["photo"].class == Array
      pet_data["media"]["photos"]["photo"][0]["$t"]
    else
      pet_data["media"]["photos"]["photo"]["$t"]
    end
  end

  def city_state(pet_data)
    if !pet_data["contact"].present?
      'No location'
    else
      pet_data["contact"]["city"]["$t"] + ' ' + pet_data["contact"]["state"]["$t"]
    end
  end

  def name_check(pet_data)
    if pet_data.class == Array
      if !pet_data[0]["name"].present?
        'No name'
      else
        pet_data[0]["name"]["$t"]
      end
    else
      if !pet_data["name"].present?
        'No name'
      else
        pet_data["name"]["$t"]
      end
    end
  end

  def size_check(pet_data)
    if pet_data.class == Array
      if !pet_data[0]["size"].present?
        'No size'
      else
        pet_data[0]["size"]["$t"]
      end
    else
      if !pet_data["size"].present?
        'No size'
      else
        pet_data["size"]["$t"]
      end
    end
  end

  def age_check(pet_data)
    if !pet_data["age"].present?
      'No age'
    else
      pet_data["age"]["$t"]
    end
  end
end
