class PetFacade

  def initialize(pet_params)
    @pet_params = pet_params
  end

  def pet_found
    @conn = Faraday.new(url: "http://api.petfinder.com") do |faraday|
      faraday.adapter Faraday.default_adapter
    end

    response = @conn.get("/pet.find?key=#{api_key}&format=json")

    results = JSON.parse(response.body, symbolize_names: true)[:pets][:pet]

    results.map do |result|
      Pet.new(result)
    end
  end

  def api_key
    ENV["pet_api_key"]
  end
end
