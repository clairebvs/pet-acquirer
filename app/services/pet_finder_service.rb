class PetFinderService
  def initialize(pet_params = {})
    @pet_params = pet_params
  end

  def pictures
   get_json("pet.getRandom?key=#{api_key}&format=json&output=basic")["petfinder"]
  end

  def all_pets
    get_json("/pet.find?key=#{api_key}&format=json&location=#{@pet_params["location"]}&animal=#{@pet_params["animal"]}&size=#{@pet_params["size"]}&age=#{@pet_params["age"]}")
  end

  private

  def conn
    Faraday.new(url: "http://api.petfinder.com") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    JSON.parse(conn.get(url).body)
  end

  def api_key
    ENV["pet_api_key"]
  end
end
