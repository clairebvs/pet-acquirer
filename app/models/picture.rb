class Picture
  attr_reader :name, :photo, :breed

  def initialize(picture_data)
    @name = picture_data["name"]
    @photo = picture_data["photos"]
    @breed = picture_data["breeds"]
  end

  def self.find_random_picture
    @conn = Faraday.new(url: "http://api.petfinder.com") do |faraday|
      faraday.adapter Faraday.default_adapter
    end

    api_key = ENV["pet_api_key"]

    response = @conn.get("pet.getRandom?key=#{api_key}&format=json&output=basic")

    results = JSON.parse(response.body, symbolize_names: true)[:petfinder][:pet]

    results.map do |result|
      Picture.new(result)
    end
  end
end
