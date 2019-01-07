class Picture
  attr_reader :name, :breed, :photo

  def initialize(picture_data)
    @name = name_check(picture_data)
    @photo = photo_check(picture_data)
    @breed = breed_check(picture_data)
  end

  def photo_check(picture_data)
    if picture_data["media"]["photos"]["photo"].class == Array
      picture_data["media"]["photos"]["photo"][0]["$t"]
    else
      picture_data["media"]["photos"]["photo"]["$t"]
    end
  end

  def breed_check(picture_data)
    if picture_data["breeds"]["breed"].class == Array
      picture_data["breeds"]["breed"][0]["$t"]
    else
      picture_data["breeds"]["breed"]["$t"]
    end
  end

  def name_check(picture_data)
    if picture_data["name"].present?
      picture_data["name"]["$t"]
    else
      "None yet"
    end
  end
end
