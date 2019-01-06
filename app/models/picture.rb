class Picture
  attr_reader :name, :photo, :breed

  def initialize(picture_data)
    @name = picture_data[:name][:$t]
    @photo = picture_data[:media][:photos][:photo][0][:$t]
    @breed = picture_data[:breeds][:breed][:$t]
  end

  def self.find_random_picture
    @conn = Faraday.new(url: "http://api.petfinder.com") do |faraday|
      faraday.adapter Faraday.default_adapter
    end

    api_key = ENV["pet_api_key"]

    response = @conn.get("pet.getRandom?key=#{api_key}&format=json&output=basic")

    results = JSON.parse(response.body, symbolize_names: true)[:petfinder]

    results.map do |pet, result|
      Picture.new(result)
    end
  end
end
