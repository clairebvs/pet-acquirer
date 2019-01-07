class PetFinderService
  def pictures
   get_json("pet.getRandom?key=#{api_key}&format=json&output=basic")["petfinder"]
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
