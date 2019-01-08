class PetSearchController < ApplicationController
  def index
    if params["location"]
      @pet_find = PetFacade.new(pet_search_params).pet_found
    end
  end

  private
  def pet_search_params
    params.permit(:location, :animal, :age, :size)
  end
end
