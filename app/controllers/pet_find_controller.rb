class PetFindController < ApplicationController
  def index
    @pet_find = PetFacade.new(pet_search_params).pet_found
  end

  private
  def pet_search_params
    params.permit(:location, :animal, :age, :size)
  end
end
