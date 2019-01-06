class Picture
  attr_reader :name, :photo, :breed

  def initialize(picture_data)
    require "pry"; binding.pry
    @name = picture_data[:name][:$t]
    @photo = picture_data[:media][:photos][:photo][0][:$t]
    @breed = picture_data[:breeds][:breed][:$t]
  end
end
