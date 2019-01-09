class PetSearchController < ApplicationController
  def index
    if params["location"]
      if params["location"].present? && PetFacade.new(pet_search_params).pet_found != "Invalid location"
        @pet_find = PetFacade.new(pet_search_params).pet_found
      else
        flash.now[:notice] = "Location cannot be empty or is incorrect"
        render 'index'
      end
    end
  end

  private
  def pet_search_params
    params.permit(:location, :animal, :age, :size)
  end
end
