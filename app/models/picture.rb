class Picture
  attr_reader :name, :breed

  def initialize(picture_data)
    @name = picture_data["name"]["$t"]
    @photo = photo(picture_data)
    @breed = picture_data["breeds"]["breed"]["$t"]
  end

  def photo(picture_data)
    if picture_data["media"]["photos"]["photo"].class == Array
      picture_data["media"]["photos"]["photo"][0]["$t"]
    else
      picture_data["media"]["photos"]["photo"]["$t"]
    end
  end
end
