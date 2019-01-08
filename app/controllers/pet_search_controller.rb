class PetSearchController < ApplicationController
  def index
    if params["location"]
      if params["location"].present?
        @pet_find = PetFacade.new(pet_search_params).pet_found
      else
        flash[:error] = 'Location and Animal fields are required'
        redirect_to '/pet_search'
      end
    end
  end

  private
  def pet_search_params
    params.permit(:location, :animal, :age, :size)
  end
end
