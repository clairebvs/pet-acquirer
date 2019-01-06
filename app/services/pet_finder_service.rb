class PetFinderService
  def pictures
    @conn = Faraday.new(url: "http://api.petfinder.com") do |faraday|
      faraday.adapter Faraday.default_adapter
    end

    api_key = ENV["pet_api_key"]

    response = @conn.get("pet.getRandom?key=#{api_key}&format=json&output=basic")

    results = JSON.parse(response.body, symbolize_names: true)[:petfinder]
  end
end
