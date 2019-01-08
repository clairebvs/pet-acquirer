class PetSearchController < ApplicationController
  def index
  end

  def create
    @pet_find = PetFacade.new(pet_search_params).pet_found
  end

  private
  def pet_search_params
    params.permit(:location, :animal, :age, :size)
  end
end
