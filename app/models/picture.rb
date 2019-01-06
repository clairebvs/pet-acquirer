class Picture
  attr_reader :name, :photo, :breed

  def initialize(picture_data)
    @name = picture_data["name"]
    @photo = picture_data["photos"]
    @breed = picture_data["breeds"]
  end

  def self.find_random_picture

  end
end
