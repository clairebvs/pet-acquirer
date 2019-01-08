class PetSearchController < ApplicationController
  def index
    @pet_find = PetFacade.new(pet_search_params)
  end

  private
  def pet_search_params
    params.permit(:location, :animal, :age, :size)
  end
end
